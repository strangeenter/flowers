package com.mao;

import org.junit.Test;

public class ThreadTest {

    @Test
    public void test(){
        //创建线程
        Thread thread = new Thread(new Runnable() {
            @Override
            public void run() {

            }
        });
        thread.start();
        thread.setName("B线程");
        thread.setPriority(10);
        thread.setContextClassLoader(this.getClass().getClassLoader());
        System.out.println(thread);
    }
}
