package com.aide.codemodel.api.util;

import java.util.concurrent.atomic.AtomicInteger;

public class TimeUtils {
   private static final long INITIAL_TIME = System.currentTimeMillis();
   private static final AtomicInteger timeDelta = new AtomicInteger(0);

   TimeUtils() {
   }

   public static long currentTimeMillis() {
      return INITIAL_TIME + ((long)timeDelta.get() & 0xffffffffL) * 100L;
   }

   static {
      Thread th = new Thread("Time getter") {
         @Override
         public void run() {
            try {
               while(!this.isInterrupted()) {
                  TimeUtils.timeDelta.set((int)((System.currentTimeMillis() - TimeUtils.INITIAL_TIME) / 100L));
                  Thread.sleep(100L);
               }
            } catch (InterruptedException ignored) {
            }
         }
      };
      th.setPriority(1);
      th.start();
   }
}
