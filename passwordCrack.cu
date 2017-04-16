#include<iostream>
#include<cstring>
#include<ctime>
#include<cstdlib>
using namespace std;


void serie_passwordCrack(int length, int*b,unsigned long long* tries){
do{
    b[0]++;
    for(int i =0; i<length; i++){
        if (b[i] >= 75 + 48){ 
            b[i] -= 75; 
            b[i+1]++;
        }else break;
    }
    cracked=true;
    for(int k=0; k<length; k++)
        if(b[k]!=a[k]){
            cracked=false;
            break;
        }
    if( (tries & 0x7ffffff) == 0 )
        cout << "\r       \r   ";
    else if( (tries & 0x1ffffff) == 0 )
        cout << ".";
    tries++;
}while(cracked==false);

}

int main()
{
int a[1000]; //array of all possible password characters
int length; //length of password
int random; //random password to be generated
int b[1000] = { 48 }; //array of attempted password cracks
unsigned long long tries = 0;
bool cracked = false;

cout << "Enter a password length: ";
cin >> length;

srand(time(NULL));
for (int i =0; i<length; i++){
    
        random = (rand()%75)+48; 
    
    a[i] = random; //adding random password to array
    cout << char(a[i]);
}cout << endl;
cout << "\n";
for(int i=0; i<length; i++)
    cout << char (b[i]);
cout << "\nNumber of tries: " << tries << endl;

return 0;
}
