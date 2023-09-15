package com.example.janela

import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.util.Log
import android.widget.Button
import android.widget.Toast

class OutraActivity : AppCompatActivity() {
    private lateinit var btVolta: Button

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_outra)
        Log.i("APP_JANELA", "OnCreate - Outra")

        if (intent.hasExtra("MSG_VAI")){
            val msg = intent.getStringExtra("MSG_VAI")
            Toast.makeText(this, msg, Toast.LENGTH_SHORT).show()
        }

        this.btVolta = findViewById(R.id.btnOutraVolta)
        this.btVolta.setOnClickListener{ voltar() }
    }

    override fun onStart() {
        super.onStart()
        Log.i("APP_JANELA", "OnStart - Outra")
    }

    override fun onResume() {
        super.onResume()
        Log.i("APP_JANELA", "OnResume - Outra")
    }

    override fun onPause() {
        super.onPause()
        Log.i("APP_JANELA", "OnPause - Outra")
    }

    override fun onStop() {
        super.onStop()
        Log.i("APP_JANELA", "OnStop - Outra")
    }

    override fun onRestart() {
        super.onRestart()
        Log.i("APP_JANELA", "OnRestart - Outra")
    }

    override fun onDestroy() {
        super.onDestroy()
        Log.i("APP_JANELA", "OnDestroy - Outra")
    }

    fun voltar(){
        val intent = Intent().apply {
            putExtra("MSG_VOLTA", "Que bom!")
        }
        setResult(RESULT_OK, intent)
        finish()
    }
}