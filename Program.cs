// See https://aka.ms/new-console-template for more information
Console.WriteLine("Test V5, World!");
while (true)
{
    // Her döngüde bir şeyler yapabilirsiniz
    // Örneğin, bir mesaj yazdırabilir veya kullanıcıdan bir giriş bekleyebilirsiniz
    Console.WriteLine("Program hala çalışıyor. Çıkmak için 'q' tuşuna basın.");

    // Kullanıcı 'q' tuşuna basarsa döngüyü kırıyoruz
    if (Console.ReadLine() == "q")
        break;
}

