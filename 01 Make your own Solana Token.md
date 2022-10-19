# My First SPL token
Launched on the Devnet. Guided by Metaschool. 

Emotions are too much to handle man, I just wanna go back to being a workaholic when I didnt care about the world and always put work first.
Anyway, I felt bored and aimless, decided to polish my skills while I take my time to find motivation again. 
Hence, this Metaschool series was born. 

First quest : Made my first, own Solana SPL token and deployed it on devnet. 

No codes to see here, just steps and CLI commands.
Requirements : Rustc , Solana CLI, Cargo, Solana Tool Suite.

EXPLANATION BEGINS BELOW

(Gosh this file gives off vibes of a school lab report) 

---

First, we make a Solana Wallet using the cmd line tool   

``` solana-keygen new --force -o "D:\Solana\test.json" ```  

![image](https://user-images.githubusercontent.com/97212160/196774934-484a60b6-94cb-4327-855f-09d2d0cf9b3c.png)
---

Next, we set the default keypair to the wallet we just created. (DO NOTE MY RPC URL WAS ALREADY CONFIGURED TO DEV NET)  
``` solana config set --keypair "D:\Solana\test.json" ```
![image](https://user-images.githubusercontent.com/97212160/196774881-13420001-c44a-4315-a9ff-c9197d27e8ad.png)

---

Now, we beg for an airdrop UwU  
``` solana airdrop 1 ```  
![image](https://user-images.githubusercontent.com/97212160/196775238-a6589401-c88b-402c-940d-f0f8bf82a7bd.png)

---

Next, we use the spl-token command to create a token using one single command!!!  
(seriously, as an ethereum dev i find this very, very weird)  

``` spl-token create-token   ```

And once the token is made, we get the address and create an account for it.

``` spl-token create-account 9XXFkLpcki5Pqq74KvRt4LrTgyAAG2w3jqQ4txddmXpo ```  

![image](https://user-images.githubusercontent.com/97212160/196775772-602984bb-ce8d-4dfc-805f-be55c2251982.png)

---

Finally, we will mint some tokens to our own wallet first. In this case, my fav number :))
![image](https://user-images.githubusercontent.com/97212160/196775987-9740267e-6b11-4905-8634-86a0973bf397.png)
---
We are not done yet! This is a very important step:  

![image](https://user-images.githubusercontent.com/97212160/196776105-520514ca-0f9d-4703-bc2d-b1f88d1e6e50.png)  

our project wont be complete without this one important command.

---
Yaay we are done! We made our very own Solana SPL token. 

Here is what it looks like on Sol Explorer:
https://explorer.solana.com/address/9XXFkLpcki5Pqq74KvRt4LrTgyAAG2w3jqQ4txddmXpo?cluster=devnet

![image](https://user-images.githubusercontent.com/97212160/196776432-6ce69fa3-964b-4ac3-9bae-a5c6d8999dab.png)
---

End of Explnation. 
I'm gonna go sleep. Have fun y'all
