=>Coding part of Activity_main.xml   
 
<?xml version="1.0" encoding="utf-8"?> 
<LinearLayout xmlns:android="http://schemas.android.com/apk/res/android" 
    xmlns:app="http://schemas.android.com/apk/res-auto" 
    xmlns:tools="http://schemas.android.com/tools" 
    android:id="@+id/main" 
    android:layout_width="match_parent" 
    android:layout_height="match_parent" 
    android:orientation="vertical" 
    tools:context=".MainActivity"> 
 
    <TextView 
        android:layout_width="wrap_content" 
        android:layout_height="wrap_content" 
        android:text="Explicit Activity" 
        android:textSize="30sp" 
        android:layout_gravity="center" 
        android:layout_marginTop="200dp" 
        /> 
 
    <Button 
        android:id="@+id/btnExplicitContent" 
        android:layout_width="match_parent" 
        android:layout_height="wrap_content" 
        android:layout_marginTop="200dp" 
        android:onClick="onClick" 
        android:text="Explicit Activity" /> 
 
</LinearLayout> 







 
=>Coding part of MainActivity.java  
 
package com.example.implicitexplicit; 
import android.content.Intent; 
import android.view.View; 
import android.os.Bundle; 
 
import androidx.activity.EdgeToEdge; 
import androidx.appcompat.app.AppCompatActivity; 
import androidx.core.graphics.Insets; 
import androidx.core.view.ViewCompat; 
import androidx.core.view.WindowInsetsCompat; 
 
 
 
public class MainActivity extends AppCompatActivity { 
 
    @Override 
    protected void onCreate(Bundle savedInstanceState) { 
        super.onCreate(savedInstanceState); 
        EdgeToEdge.enable(this); 
        setContentView(R.layout.activity_main); 
        ViewCompat.setOnApplyWindowInsetsListener(findViewById(R.id.main), (v, insets) -> { 
            Insets systemBars = insets.getInsets(WindowInsetsCompat.Type.systemBars()); 
            v.setPadding(systemBars.left, systemBars.top, systemBars.right, systemBars.bottom); 
            return insets; 
        }); 
    } 
 
 
 
 
 
 
    public void onClick(View view) { 
        Intent intent = new Intent(MainActivity.this, NextActivity.class); 
        startActivity(intent); 
    } 
 
} 
 






 
Step 2: Create another new empty views activity and give the name as Nextactivity (Go to app>> 
New>>Activity>>Empty Views Activity) 
 
Coding part of activity_next.xml  
 
<?xml version="1.0" encoding="utf-8"?> 
<LinearLayout xmlns:android="http://schemas.android.com/apk/res/android" 
    xmlns:app="http://schemas.android.com/apk/res-auto" 
    xmlns:tools="http://schemas.android.com/tools" 
    android:id="@+id/main" 
    android:layout_width="match_parent" 
    android:layout_height="match_parent" 
    android:orientation="vertical" 
    tools:context=".NextActivity"> 
 
    <TextView 
        android:layout_width="wrap_content" 
        android:layout_height="wrap_content" 
        android:text="Implicit Activity" 
        android:textSize="30sp" 
        android:layout_gravity="center" 
        android:layout_marginTop="200dp" 
        /> 
 
    <Button 
        android:id="@+id/btnImplicitContent" 
        android:layout_width="match_parent" 
        android:layout_height="wrap_content" 
        android:layout_marginTop="200dp" 
        android:onClick="onClick" 
        android:text="Implicit Activity" /> 
 
</LinearLayout> 






 
=>Coding part of NextActivity.java  
 
package com.example.implicitexplicit; 
 
import android.os.Bundle; 
import androidx.activity.EdgeToEdge; 
import androidx.appcompat.app.AppCompatActivity; 
import androidx.core.graphics.Insets; 
import androidx.core.view.ViewCompat; 
import androidx.core.view.WindowInsetsCompat; 
import android.content.Intent; 
import android.net.Uri; 
import android.view.View; 
 
 
public class NextActivity extends AppCompatActivity { 
 
    @Override 
    protected void onCreate(Bundle savedInstanceState) { 
        super.onCreate(savedInstanceState); 
        EdgeToEdge.enable(this); 
        setContentView(R.layout.activity_next); 
 
 
        ViewCompat.setOnApplyWindowInsetsListener(findViewById(R.id.main), (v, insets) -> { 
            Insets systemBars = insets.getInsets(WindowInsetsCompat.Type.systemBars()); 
            v.setPadding(systemBars.left, systemBars.top, systemBars.right, systemBars.bottom); 
            return insets; 
        }); 
 
    } 
 
 
    public void onClick(View view) { 
        Uri webpage= Uri.parse("http://www.google.com"); 
        Intent intent = new Intent(Intent.ACTION_VIEW, webpage); 
        startActivity(intent); 
    } 
 
 
}
