// Zoom Effect On Product Page & Fabric Page






var elem = document.getElementById('sizeSelection');
var SizeOptions = {
    Small: [
        {
            collar: '14',
            shoulder: '17',
            chest: '20.5',
            waist: '18',
            sleeve: '24.5',
            shirt: '28.5',
        },
        {
            collar: '14.5',
            shoulder: '17',
            chest: '20.5',
            waist: '18',
            sleeve: '24.5',
            shirt: '28.5',
        },
        {
            collar: '15',
            shoulder: '18',
            chest: '20.5',
            waist: '19',
            sleeve: '24.5',
            shirt: '29',
        },
    ],
    Medium: [
        {
            collar: '15.5',
            shoulder: '18.5',
            chest: '22.5',
            waist: '19',
            sleeve: '25',
            shirt: '29.5',
        },
        {
            collar: '16',
            shoulder: '18.5',
            chest: '22.5',
            waist: '21',
            sleeve: '25',
            shirt: '29.5',
        },
        {
            collar: '16.5',
            shoulder: '20',
            chest: '24.5',
            waist: '23',
            sleeve: '25.5',
            shirt: '30',
        },
    ],
    Large: [
        {
            collar: '17',
            shoulder: '20',
            chest: '24.5',
            waist: '23',
            sleeve: '25.5',
            shirt: '30',
        },
        {
            collar: '17.5',
            shoulder: '21',
            chest: '26.5',
            waist: '25',
            sleeve: '26',
            shirt: '30.5',
        },
        {
            collar: '18',
            shoulder: '21',
            chest: '26.5',
            waist: '25',
            sleeve: '26',
            shirt: '30.5',
        },
    ],
};

function medium() {
    elem.innerHTML += `<option disabled value="select" selected>Select</option>`;
    for (var i in SizeOptions.Medium) {
        selOptions = `
      
   <option value="medium${SizeOptions.Medium[i].collar}">${SizeOptions.Medium[i].collar}</option>
      `;
        elem.innerHTML += selOptions;
    }
}
function small() {
    elem.innerHTML += `<option disabled value="select" selected>Select</option>`;
    for (var i in SizeOptions.Small) {
        selOptions = `
   <option value="small${SizeOptions.Small[i].collar}">${SizeOptions.Small[i].collar}</option>
      `;
        elem.innerHTML += selOptions;
    }
}

function large() {
    elem.innerHTML += `<option disbaled value="select" selected>Select</option>`;
    for (var i in SizeOptions.Large) {
        selOptions = `
      <option value="large${SizeOptions.Large[i].collar}">${SizeOptions.Large[i].collar}</option>
      `;
        elem.innerHTML += selOptions;
    }
}
