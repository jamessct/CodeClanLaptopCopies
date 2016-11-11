package com.example.user.myfirstapp;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;


import java.util.Random;

public class MyFirstApp extends AppCompatActivity {

    EditText mQuestionEditText;
    Button mHaveAKitKat;



    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Log.d("Virtual KitKat:", "on create called");
        setContentView(R.layout.activity_main);

        mQuestionEditText = (EditText)findViewById(R.id.question_text);
        mHaveAKitKat = (Button)findViewById(R.id.button);

        mHaveAKitKat.setOnClickListener(new View.OnClickListener();
            @Override
            public void onClick (View view) {
                String question = mQuestionEditText.getText().toString();
                String[] answers = {"No break for you",
                                    "Not a chance mate",
                                    "What do you think this is? Ruby!?"};
                Random rand = new Random();
                int index = rand.nextInt(answers.length);
                String answer = answers[index];

                Intent intent = new Intent(MyFirstApp.this, AnswerActivity.class);
                intent.putExtra("answer", answer);

                startActivity(intent);

            }
    });
}




