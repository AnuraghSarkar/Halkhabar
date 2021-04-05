function togglingReply(parent_id) {
    const row = document.getElementById(parent_id);
    row.classList.toggle('d-none');
}

function showNotification () { 

    const container = document.querySelector('#notification-container');
    container.classList.toggle('d-none');

 }




