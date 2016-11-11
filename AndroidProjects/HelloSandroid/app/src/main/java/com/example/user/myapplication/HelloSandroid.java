package com.example.user.myapplication;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.util.Log;

/**
 * Created by user on 29/08/2016.
 */
public class HelloSandroid extends AppCompatActivity {
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        Log.d("HelloSandroid:", "onCreate has been called");
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }
}
