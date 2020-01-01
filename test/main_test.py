import unittest
import main


class MyTestCase(unittest.TestCase):
    def test_all_units(self):
        parallel = False
        samples_factor = 0.01
        verbose = True,
        mode = main.Mode.TEST
        min_unit, max_unit = 2, 3
        for unit in range(min_unit, max_unit + 1):
            for challenge in range(1, 4):
                print('testing unit {} challenge {}'.format(unit, challenge))
                main.main(unit, challenge, parallel, samples_factor, verbose, mode)



if __name__ == '__main__':
    unittest.main()
