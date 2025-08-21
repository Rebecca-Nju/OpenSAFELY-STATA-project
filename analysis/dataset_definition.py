from ehrql import Dataset

dataset = Dataset()

dataset.define_population(
    patients.age_on("2020-01-01") >= 18
)

dataset.age = patients.age_as_of("2020-01-01")
dataset.sex = patients.sex

dataset.write("output/dataset.csv.gz")
