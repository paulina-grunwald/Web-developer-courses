var orgChart = {
  name: 'Michael', subordinates: [
    {
      name: 'Andy', subordinates: [
        {
          name: 'Adam', subordinates: []
        },
        {
          name: 'Jack', subordinates: []
        }
      ]
    }
  ]
};

var fn = function (topEmployee) {
  console.log(topEmployee.name);
  for (var i = 0; i < topEmployee.subordinates.length; i++)
    fn(topEmployee.subordinates[i]);
};

fn(orgChart);
/*
Michael
Andy
Adam
Jack
*/

var fn = function showAllEmployees(topEmployee) {
  console.log(topEmployee.name);
  for (var i = 0; i < topEmployee.subordinates.length; i++)
    showAllEmployees(topEmployee.subordinates[i]);
};
fn(orgChart);
/*
Michael
Andy
Adam
Jack
*/
