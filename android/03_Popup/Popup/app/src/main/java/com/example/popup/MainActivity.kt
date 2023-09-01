package com.example.popup

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.Button
import android.widget.Toast

class MainActivity : AppCompatActivity() {
    private lateinit var botao: Button

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        this.botao = findViewById(R.id.button)
        this.botao.setOnClickListener{ onClick() }

    }

    fun onClick() {
        Toast.makeText(this, "Oi", Toast.LENGTH_SHORT).show()
    }
}