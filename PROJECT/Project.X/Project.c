#include "pic24_all.h"

#define LED1 _LATA0
#define LED2 _LATA1
#define CONFIG_LEDS() do { CONFIG_RA0_AS_DIG_OUTPUT(); CONFIG_RA1_AS_DIG_OUTPUT(); } while(0)

#define SW1 _RB0
#define SW2 _RB1
#define SW1_PRESSED() (SW1 == 0)
#define SW1_RELEASED() (SW1 == 1)
#define SW2_PRESSED() (SW2 == 0)
#define SW2_RELEASED() (SW2 == 1)

#define RS_HIGH()        _LATB9 = 1
#define RS_LOW()         _LATB9 = 0
#define CONFIG_RS()      CONFIG_RB9_AS_DIG_OUTPUT()

#define E_HIGH()         _LATB14 = 1
#define E_LOW()          _LATB14 = 0
#define CONFIG_E()       CONFIG_RB14_AS_DIG_OUTPUT()

#define LCD4O          (_LATB5)
#define LCD5O          (_LATB6)
#define LCD6O          (_LATB7)
#define LCD7O          (_LATB8)

#define CONFIG_LCD4_AS_OUTPUT() CONFIG_RB5_AS_DIG_OUTPUT()
#define CONFIG_LCD5_AS_OUTPUT() CONFIG_RB6_AS_DIG_OUTPUT()
#define CONFIG_LCD6_AS_OUTPUT() CONFIG_RB7_AS_DIG_OUTPUT()
#define CONFIG_LCD7_AS_OUTPUT() CONFIG_RB8_AS_DIG_OUTPUT()

inline void CONFIG_SW() 
{
    CONFIG_RB0_AS_DIG_INPUT();
    ENABLE_RB0_PULLUP();
    CONFIG_RB1_AS_DIG_INPUT();
    ENABLE_RB1_PULLUP();
}

void configControlLCD(void) {
    CONFIG_RS();     
    CONFIG_E();      
    CONFIG_LCD4_AS_OUTPUT();   
    CONFIG_LCD5_AS_OUTPUT();   
    CONFIG_LCD6_AS_OUTPUT();   
    CONFIG_LCD7_AS_OUTPUT();   
}

void pulseE(void) {
    DELAY_US(2);
    E_HIGH();
    DELAY_US(2);
    E_LOW();
    DELAY_US(2);
}

void outputToBusLCD(uint8_t u8_c) {
    LCD4O = u8_c & 0x01;          
    LCD5O = (u8_c >> 1) & 0x01;   
    LCD6O = (u8_c >> 2) & 0x01;   
    LCD7O = (u8_c >> 3) & 0x01;   
}

void lcd_init_write(unsigned char u8_Cmd)
{
    RS_LOW();
    outputToBusLCD((u8_Cmd >> 4));  
    pulseE();
    RS_HIGH();
}

void InitLCD()
{  
    DELAY_MS(200);          
    lcd_init_write(0x30);   
    DELAY_MS(100);          
    lcd_init_write(0x30);   
    DELAY_MS(100);          
    lcd_init_write(0x30);   
    DELAY_MS(100);          
    lcd_init_write(0x20);   
    DELAY_MS(0);            
}

void lcd_cmd(uint8_t cmd)
{
    RS_LOW();
    outputToBusLCD((cmd >> 4));  
    pulseE();
    outputToBusLCD(cmd);         
    pulseE();
    RS_HIGH();
    DELAY_MS(2);
}

void lcd_write_data(char harf)
{
    RS_HIGH();
    outputToBusLCD((harf >> 4));  
    pulseE();
    outputToBusLCD(harf);         
    pulseE();
    RS_LOW();
    DELAY_US(50);
}

void lcd_data(uint8_t row, uint8_t column, char *data)
{
    uint8_t temp;
    switch(row)
    {
        case 1:
            temp = (column - 1) + 0x80;  
            break;
        case 2:
            temp = (column - 1) + 0xC0;  
            break;
    }   
    lcd_cmd(temp);
    while(*data)
    {
        lcd_write_data(*data++);
    }
}

int main(void) {
    configClock();                  
    configDefaultUART(230400);      
    
    CONFIG_SW();                    
    DELAY_US(1);                    
    CONFIG_LEDS();                  
    configControlLCD();             
    InitLCD();                      
    
    lcd_cmd(0x28);  
    lcd_cmd(0x0E);  
    lcd_cmd(0x06);  
    lcd_cmd(0x01);  
    lcd_cmd(0x02);  
    
    lcd_data(1, 1, "Mikroislemci"); 
    
    LED1 = 0;       
    LED2 = 0;       
    
    static uint8_t sw1_last_state = 0;
    static uint8_t sw2_last_state = 0;

    while (1) {
        
        if (SW1_PRESSED()) {
            DELAY_MS(5);
            if (SW1_PRESSED()) { 
                LED1 = 1; 
                outChar('d'); 
                if (!sw1_last_state) {
                    lcd_cmd(0xC0); 
                    lcd_data(2, 1, "Moving right..."); 
                    sw1_last_state = 1;
                }
            }
        } else {
            LED1 = 0; 
            if (sw1_last_state) {
                outChar('r'); 
                lcd_cmd(0xC0); 
                lcd_data(2, 1, "                "); 
                sw1_last_state = 0;
            }
        }
        
        if (SW2_PRESSED()) {
            DELAY_MS(5);
            if (SW2_PRESSED()) { 
                LED2 = 1; 
                outChar('a'); 
                if (!sw2_last_state) {
                    lcd_cmd(0xC0); 
                    lcd_data(2, 1, "Moving left..."); 
                    sw2_last_state = 1;
                }
            }
        } else {
            LED2 = 0; 
            if (sw2_last_state) {
                outChar('r'); 
                lcd_cmd(0xC0); 
                lcd_data(2, 1, "                "); 
                sw2_last_state = 0;
            }
        }
    }

    return 0;
}