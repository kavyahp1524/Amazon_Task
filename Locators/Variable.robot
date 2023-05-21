
*** Variables ***


${URL_Amz}            https://www.amazon.in/
${Browser}            chrome

### Home Page ###
${Today'sDeal}        xpath://*[contains(text(),'Today’s Deals')]
${Product}            xpath://*[@data-csa-c-item-id='amzn1.deal.802f7a3f']

### Product Page ###
${Buds}               xpath://*[@title='OnePlus Nord Buds True Wireless in Ear Earbuds with Mic, 12.4mm Titanium Drivers, Playback:Up to 30hr case, 4-Mic Design + AI Noise Cancellation, IP55 Rating, Fast Charging (Black Slate)']


### OnePlus Nord Buds Product Page ###
${BudsPrize}           xpath:(//*[@class='a-price-whole'])[6]
${Prize}               2,499
${Details}             xpath://*[@id='seeMoreDetailsLink']

### Table Content ###
${RowCount}            xpath://*[@id='productDetails_techSpec_section_1']//tr
${ColoumCount}         xpath://*[@id='productDetails_techSpec_section_1']//tr[1]//td

${ExpectedTitle}       Colour  
${ExpectedData}        Black Slate 


