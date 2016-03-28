var app = angular.module("startAJS", []);

app.controller("skills", function ($scope) {
    
    $scope.topic = { title: "Subjectskills", rating: "Rating" };
    $scope.skillset = [
        {
         title : "HTML", rating : 9
        },
        {
        title : "CSS" , rating : 8
        }
    ]

    $scope.removeskill = function(skill)
    {
        var index = $scope.skillset.indexOf(skill);
        $scope.skillset.splice(index,1);
    }

    $scope.addskill = function(newskill)
    {
        var obj = {
            title:newskill.title,
        rating:newskill.rating
        }
        $scope.skillset.push(obj);
        newskill.title.clear();
    }
}
);