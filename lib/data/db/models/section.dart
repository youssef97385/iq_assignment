class Section {
  Section({

    this.sectionType,
    this.sectionTitle


  });

  String sectionTitle;
  String sectionType;


  factory Section.fromJson(Map<String, dynamic> json) => Section(

      sectionTitle: json["sectionTitle"],
      sectionType: json["sectionType"]
  );


  Map<String, dynamic> toJson() => {


    "sectionTitle": sectionTitle,
    "sectionType": sectionType,

  };
}