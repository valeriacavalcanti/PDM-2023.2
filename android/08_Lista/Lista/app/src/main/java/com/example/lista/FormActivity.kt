package com.example.lista

import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.Button
import android.widget.EditText

class FormActivity : AppCompatActivity() {
    private lateinit var etNome: EditText
    private lateinit var btnSalvar: Button
    private lateinit var btnCancelar: Button

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_form)

        this.etNome = findViewById(R.id.etFormNome)
        this.btnSalvar = findViewById(R.id.btnFormSalvar)
        this.btnCancelar = findViewById(R.id.btnFormCancelar)

        this.btnSalvar.setOnClickListener{ salvar() }

        this.btnCancelar.setOnClickListener{
            finish()
        }
    }

    fun salvar(){
        val nome = this.etNome.text.toString()
        val intent = Intent().apply {
            putExtra("NOME", nome)
        }
        setResult(RESULT_OK, intent)
        finish()
    }
}