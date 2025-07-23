//
//  Assignment2.swift
//  ProjectUnit103
//
//  Created by Willie Earl on 7/21/25.
//

import SwiftUI

struct Student: Identifiable {
    let id = UUID()
    var name: String
    var grades: [Double]
    
    var averageGrade: Double {
        grades.isEmpty ? 0 : grades.reduce(0, +) / Double(grades.count)
    }
}

struct Assignment2: View {
    @State private var students: [Student] = [
        Student(name: "Dave", grades: [85, 82, 86]),
        Student(name: "fernado", grades: [90, 93, 92]),
        Student(name: "Epifanio", grades: [75, 80, 78])
    ]
    
    @State private var sortAscending = true
    @State private var newName = ""
    @State private var newGrades = ""
    
    var courseAverage: Double {
        let allGrades = students.flatMap { $0.grades }
        return allGrades.isEmpty ? 0 : allGrades.reduce(0, +) / Double(allGrades.count)
    }
    
    var sortedStudents: [Student] {
        students.sorted {
            sortAscending ? $0.averageGrade < $1.averageGrade : $0.averageGrade > $1.averageGrade
        }
    }

    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                Text("Course Average: \(courseAverage, specifier: "%.2f")")
                    .font(.headline)
                    .padding(.horizontal)

                Button(action: {
                    sortAscending.toggle()
                }) {
                    Text("Sort by Average (\(sortAscending ? "Ascending" : "Descending"))")
                        .font(.subheadline)
                        .padding(.horizontal)
                }

                List {
                    ForEach(sortedStudents) { student in
                        HStack {
                            Text(student.name)
                            Spacer()
                            Text("\(student.averageGrade, specifier: "%.2f")")
                        }
                    }
                }

                VStack(alignment: .leading) {
                    Text("Add New Student")
                        .font(.headline)
                        .padding(.top)

                    TextField("Name", text: $newName)
                        .textFieldStyle(RoundedBorderTextFieldStyle())

                    TextField("Grades (comma separated)", text: $newGrades)
                        .textFieldStyle(RoundedBorderTextFieldStyle())

                    Button("Add Student") {
                        let gradeValues = newGrades
                            .split(separator: ",")
                            .compactMap { Double($0.trimmingCharacters(in: .whitespaces)) }

                        if !newName.isEmpty && !gradeValues.isEmpty {
                            students.append(Student(name: newName, grades: gradeValues))
                            newName = ""
                            newGrades = ""
                        }
                    }
                    .padding(.top, 5)
                }
                .padding()
            }
            .navigationTitle("Student Records")
        }
    }
}

#Preview {
    Assignment2()
}

