# B3W2L3 - Validate HTML Form 
## Created by Ricardo Froeliger

At lab 2 you used two pages, 1 page to fill in your form and page showing the result of the completed form.

1. Convert these 2 pages to 1 php page in which you can fill in the form and in which the processing of the form also takes place. The effect remains the same as you made at lab 2.
2. Add the following to the name field: `<script> alert ('hi') </script>`. Make sure that you make the form safe so that you receive special input correctly!
3. The fields name and email should both become required fields. 
    * Clearly show the user what the required fields are (by using a *)
    * Give feedback if one or more required fields are not filled in
    * Give feedback if the email address is not valid.
    * If a required field has been filled in, leave the entered data in the form
    * If the form has been completed correctly, do not show the form anymore, but only the result
    * The form must not be processed if the required fields are not completed.