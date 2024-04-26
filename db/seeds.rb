require 'faker'

5.times do
  survey = Survey.create(question: Faker::Lorem.question(word_count: 10))

  rand(5..10).times do
    survey.responses.create(answer: [true, false].sample)
  end
end
