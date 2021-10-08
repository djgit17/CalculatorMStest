using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace CalMStest
{
    [TestClass]
    public class Class1
    {
        [TestMethod]
        public void Test_Add()
        {
            //Arrange
            int expected = 12;
            int val1 = 8;
            int val2 = 4;

            //Act
            int actual = Calmstestdll.Class1.Add(val1, val2);

            //Assert
            Assert.AreEqual(expected, actual);
        }

        [TestMethod]
        public void Test_sub()
        {
            //Arrange
            int expected = 4;
            int val1 = 8;
            int val2 = 4;

            //Act
            int actual = Calmstestdll.Class1.Sub(val1, val2);

            //Assert
            Assert.AreEqual(expected, actual);
        }
        [TestMethod]
        public void Test_mul()
        {
            //Arrange
            int expected = 32;
            int val1 = 8;
            int val2 = 4;

            //Act
            int actual = Calmstestdll.Class1.Mul(val1, val2);

            //Assert
            Assert.AreEqual(expected, actual);
        }
        [TestMethod]
        public void Test_div()
        {
            //Arrange
            int expected = 2;
            int val1 = 8;
            int val2 = 4;

            //Act
            int actual = Calmstestdll.Class1.Div(val1, val2);

            //Assert
            Assert.AreEqual(expected, actual);
        }
    }
}
