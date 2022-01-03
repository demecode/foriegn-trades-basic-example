Feature: New Web Application - Create & store foreign exchange trades

  Scenario Outline: As a User, I want to access the 'New Trades' view so that I can create a new trade

    Given I am on the main view of the application
    * I see the <buttonName> button
    When I click the <buttonName> button
    Then I see the New Trades view
    * I see an empty Sell Currency dropdown field
    * I see an empty Buy Currency dropdown field
    * I see the Sell Amount Field
    * I see the Buy Amount field
    * I see the Create button
    * I see the Cancel button

    Examples:
      | buttonName |
      |            |


  Scenario Outline: As a User, I want to create a new trade with valid data for GBP/USD pair

    Given I am on the the main view of the application
    * I see the New Trades wide-frame
    * The Sell Amount is <sellAmount>
    When I select <sellCurrency> as the Sell Currency
    * I select <buyCurrency> as the Sell Currency
    Then I see <currentExchangeRateForPair> as the exchange rate
    And I see the <buyAmountBasedOnExchangeRate> Buy Amount field updated to reflect the changes

    Examples:
      | sellCurrency | buyCurrency | sellAmount | currentExchangeRateForPair | buyAmountBasedOnExchangeRate |
      |              |             |            |                            |                              |


  Scenario Outline: As a User, I want to create a trade with £10,000 Sell Amount for GBP/USD  pair
    Given I am on the the main view of the application
    * I see the New Trades wide-frame
    * The Sell Amount is <sellAmount>
    When I select <sellCurrency> as the Sell Currency
    * I select <buyCurrency> as the Sell Currency
    * I enter <sellAmount> inn the Sell Amount field
    Then I see <currentExchangeRateForPair> as the exchange rate
    And I see the <buyAmountBasedOnExchangeRate> Buy Amount field updated to reflect the changes

    Examples:
      | sellCurrency | buyCurrency | currentExchangeRateForPair | sellAmount | buyAmountBasedOnExchangeRate |
      |              |             |                            | 10,000     |                              |

  Scenario Outline: Ensure the exchange rate is updated accordingly per exchange pair
    Given I am on the the main view of the application
    * I see the New Trades wide-frame
    * The default Sell Currency is <sellCurrency>
    * The default Buy Currency is <buyCurrency>
    * The current rate is <currentExchangeRateForPair>
    When I select <newSellCurrency> as the Sell Currency
    And I select <newBuyCurrency> as the Buy Currency
    Then I see <exchangeRate> as the exchange rate

    Examples:
      | sellCurrency | buyCurrency | currentExchangeRateForPair | newSellCurrency | newBuyCurrency | exchangeRate |
      |              |             |                            |                 |                |              |

  Scenario Outline: Ensure the Buy Amount figure is updated based on the exchange rate
    Given I am on the the main view of the application
    * I see the New Trades wide-frame
    * The default Sell Currency is <sellCurrency>
    * The default Buy Currency is <buyCurrency>
    * The current rate is <currentExchangeRateForPair>
    When I select <newSellCurrency> as the Sell Currency
    And I select <newBuyCurrency> as the Buy Currency
    Then I see <exchangeRate> as the exchange rate
    And I see the <buyAmountBasedOnExchangeRate> Buy Amount field updated to reflect the changes

    Examples:
      | sellCurrency | buyCurrency | currentExchangeRateForPair | newSellCurrency | newBuyCurrency | exchangeRate |
      |              |             |                            |                 |                |              |



