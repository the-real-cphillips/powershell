# powershell
Collection of powershell scripts... FWIW I don't write powershell...

---

### [CR3 to DNG Convertor][convert-cr3]

__Dependency__
* [Adobe DNG Convertor](https://helpx.adobe.com/photoshop/using/adobe-dng-converter.html)

This takes `.CR3` photos within a specific directory (you'd need to modify it for your own source/dest)  
and then converts them to DNG but with embedding the `CR3` in the `DNG`.  For extraction if need be at a later date

---

### Motivate (aka On-Demand [Inspirobot][inspirobot] Generator)

Reaches out to the Inspriobot API to present you "Inspiration"

* Pokes the API
* API Generates an Image with a URL
* Default Browser Opens up with said Image

---
[convert-cr3]: https://github.com/the-real-cphillips/powershell/blob/main/convert-cr3-to-dng.ps1
[inspirobot]: https://inspirobot.me
[motivator]: https://github.com/the-real-cphillips/powershell/blob/main/motivate.ps1
