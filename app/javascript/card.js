const pay = () => {
  Payjp.setPublicKey(process.env.PAYJP_PUBLIC_KEY);
  const form = document.getElementById("charge-form");
  form.addEventListener("submit", (e) => {
    e.preventDefault();


    const formResult = document.getElementById("charge-form");
    const formData = new FormData(formResult);

    const card = {
      number: formData.get("user_purchase[number]"),
      cvc: formData.get("user_purchase[cvc]"),
      exp_month: formData.get("user_purchase[exp_month]"),
      exp_year: `20${formData.get("user_purchase[exp_year]")}`,
    };

    Payjp.createToken(card, (status, response) => {
      if (status == 200) {
        const token = response.id;
        console.log(token)
        const renderDom = document.getElementById("charge-form");
        const tokenObj = `<input value=${token} name='token' type="hidden"> `;
        renderDom.insertAdjacentHTML("beforeend", tokenObj);
      }

      document.getElementById("user_purchase_number").removeAttribute("name");
      document.getElementById("user_purchase_cvc").removeAttribute("name");
      document.getElementById("user_purchase_exp_month").removeAttribute("name");
      document.getElementById("user_purchase_exp_year").removeAttribute("name");

      document.getElementById("charge-form").submit();

    });
  });
};

window.addEventListener("load", pay);