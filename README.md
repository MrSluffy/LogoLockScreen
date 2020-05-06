# Simple Clock Lockscreen Style with Custom Logo

# How to set this up 

# Step-1
 
In Package SystemUi

Navigate and open  SystemUI/res-keyguard/keguard_clock_switch.xml

And Replace with my keyguard_clock_switch.xml

# Step-2 

In Package Settings 

Put this in LockScreen pref xml 


 <ListPreference android:entries="@array/lockscreen_logo_type_entries" android:title="Lockscreen Logo Style" android:key="logo_type" android:defaultValue="3" android:entryValues="@array/lockscreen_logo_type_values" />
 
 
 and in Array.xml
 
 
     <string-array name="lockscreen_logo_type_entries">
        <item>OFF</item>
        <item>LockScrenLogo1</item>
        <item>LockScrenLogo2</item>
        <item>LockScrenLogo3</item>
        <item>LockScrenLogo4</item>
        <item>LockScrenLogo5</item>
        <item>LockScrenLogo6</item>
        <item>LockScrenLogo7</item>
        <item>LockScrenLogo8</item>
        <item>LockScrenLogo9</item>
        <item>LockScrenLogo10</item>
        <item>LockScrenLogo11</item>
        <item>LockScrenLogo12</item>
        <item>LockScrenLogo13</item>
        <item>LockScrenLogo14</item>
        <item>LockScrenLogo15</item>
        <item>LockScrenLogo16</item>
        <item>LockScrenLogo17</item>
        <item>LockScrenLogo18</item>
        <item>LockScrenLogo19</item>
        <item>LockScrenLogo20</item>
    </string-array>
    <string-array name="lockscreen_logo_type_values">
        <item>1</item>
        <item>2</item>
        <item>3</item>
        <item>4</item>
        <item>5</item>
        <item>6</item>
        <item>7</item>
        <item>8</item>
        <item>9</item>
        <item>10</item>
        <item>11</item>
        <item>12</item>
        <item>13</item>
        <item>14</item>
        <item>15</item>
        <item>16</item>
        <item>17</item>
        <item>18</item>
        <item>19</item>
        <item>20</item>
    </string-array>
    
   
   
# Step-3 Merge The files


Done


# CREDITS

# Parshit Team - https://github.com/Para-SHIT
# Erza Triana
# Nasim Ni
# wallpaperplay.com


 
