library = {
	classic_literature: {
		fiction_isle: {
			american_authors: {
				John_Steinbeck: [
					"Of Mice and Men"
				],
				Ernest_Hemingway: [
					"The Old Man and the Sea", 
					"A Farewell to Arms"
				],
				Harriet_Beecher_Stowe: [
					"Uncle Tom's Cabin"
				],
				Margaret_Mitchell: [
					"Gone with the Wind"
				]
			},
			russian_authors: {
				Leo_Tolstoy: [
					"War and Peace",
					"Anna Karenina",
					"Hadji Murad"
				],
				Fyodor_Dostoyevsky: [
					"Crime and Punishment", 
					"The Idiot", 
					"The Brothers Karamazov"
				],
				Nikolai_Gogol: [
					"Dead Souls", 
					"The Overcoat"
				]
			}
		},
		nonfiction_isle: {
			american_authors: {
				Truman_Capote: [
					"In Cold Blood"
				],
				Mark_Twain: [
					"Life on the Mississippi"
				],
				Bill_Bryson: [
					"Notes from a Small Island"
				],
				Thomas_Paine: [
					"Common Sense"
				]
			}
		}
	},
	autobiography: {
		Salvador_Dali: [
			"The Secret Life of Salvador Dali"
		],
		Vincent_Price: [
			"I Like What I Know"
		]
	},
	on_sale: {
		popular_puzzles: { 
		price: 5,
		available: 13
	    },
		kids_books: {
			price: 7,
			available: 23
		}
	}
}

# access Ernest Hemingway's second book
library[:classic_literature][:fiction_isle][:american_authors]
[:Ernest_Hemingway][1]

# add another book of Nikolai Gogol
library[:classic_literature][:fiction_isle][:russian_authors]
[:Nikolai_Gogol].push("The Government Inspector")

# access number of books available 
library[:on_sale][:popular_puzzles][:available]

# does it include Vincent Price's autobiography?
library[:autobiography][:Vincent_Price].include?("I Like What I Know")