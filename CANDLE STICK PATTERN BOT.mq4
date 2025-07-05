//+------------------------------------------------------------------+
//|                                           MOVING AVERAGE BOT.mq4 |
//|                                  Copyright 2025, MetaQuotes Ltd. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2025, MetaQuotes Ltd."
#property link      "https://www.mql5.com"
#property version   "1.00"
#property strict
//+------------------------------------------------------------------+
//| Expert initialization function                                   |
//+------------------------------------------------------------------+
int OnInit()
  {
//---
   
//---
   return(INIT_SUCCEEDED);
  }
//+------------------------------------------------------------------+
//| Expert deinitialization function                                 |
//+------------------------------------------------------------------+
void OnDeinit(const int reason)
  {
//---
   
  }
//+------------------------------------------------------------------+
//| Expert tick function                                             |
//+------------------------------------------------------------------+
void OnTick()
  {
//---


   double open1 = Open[1];
   double close1 = Close[1];
   double open2 = Open[2];
   double close2 = Close[2];
   double open3 = Open[3];
   double close3 = Close[3];
  
  if (OrdersTotal()==0)
  
  {
 
   if (open1>close1 && open2>close2 && open3>close3) //bearish pattern detected!
   {
       OrderSend(NULL,OP_SELL,0.1,Bid,5,Bid+500*Point,Bid-500*Point);
   }
   
   if (open1<close1 && open2<close2 && open3<close3)//bullish pattern detected!")
   {
       OrderSend(NULL,OP_BUY,0.1,Ask,5,Ask-500*Point,Ask+500*Point);
   }
   
   
     }           
   
   
  }
 
//+------------------------------------------------------------------+
