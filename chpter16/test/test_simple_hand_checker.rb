require 'simple_hand_checker'

class SimpleHandCheckerTest < Test::Unit::TestCase
    def test_initialize_about_input_card_count
        assert_raise(RuntimeError) { SimpleHandChecker.new([1,2,3,3,4,5]) }
        assert_raise(RuntimeError) { SimpleHandChecker.new([1,2,3,5]) }
        assert_nothing_raised(RuntimeError) { SimpleHandChecker.new([1, 2, 3, 4, 5]) }
    end

    # Power Assert
    # def test_result_when_cards_in_four_of_a_kind
    #     hand = SimpleHandChecker.new([1, 1, 1, 1, 5]).result
    #     assert { hand.is_a?(FullHouse)}
    #     assert {hand.max_card}
    # end

    # assertにブロックを渡すとPowerAssertを利用できる
    # 以下のようにテストが失敗した際に各項目や式の評価結果も出力し、どこで問題が発生したのかを視覚的に把握しやすくなる

    # ===================================================================================================================================================  
    # Failure: test_result_when_cards_in_four_of_a_kind(SimpleHandCheckerTest):
    #         assert { hand.is_a?(FullHouse)}
    #                 |    |     |
    #                 |    |     FullHouse
    #                 |    false
    #                 #<FourOfAKind:0x00000001532cd018 @max_card=1>
    # ===================================================================================================================================================
end

        