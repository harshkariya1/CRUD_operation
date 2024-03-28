const express = require('express');
const UserController = require('../controllers/userController')
const router = express();

require('../model')
const multer = require('multer');
const mysql = require('mysql2/promise');



// Multer configuration for file upload
const storage = multer.diskStorage({
    destination: function (req, file, cb) {
        cb(null, 'uploads/'); // Save uploaded files to the 'uploads' directory
    },
    filename: function (req, file, cb) {
        cb(null, Date.now() + '-' + file.originalname); // Add a unique timestamp to the filename
    }
});
const upload = multer({ storage: storage });

// Route to upload profile picture for a user
router.post('/upload', upload.single('profilePicture'), async (req, res) => {
    try {
        // Access the uploaded file using req.file
        if (!req.file) {
            return res.status(400).json({ error: 'No file uploaded' });
        }
        
        // Process the uploaded file as needed
        const profilePicturePath = req.file.path;

        // Save the file path to the user's profile in the database
        // Example code:
        // const userId = req.body.userId;
        // await pool.execute('UPDATE users SET profile_picture = ? WHERE id = ?', [profilePicturePath, userId]);

        res.json({ message: 'File uploaded successfully', profilePicturePath });
    } catch (error) {
        console.error('Error uploading file:', error);
        res.status(500).json({ error: 'Internal server error' });
    }
});

module.exports = router;


router.get('/', (req, res) => {
    res.send("Hello")
})

router.get('/users', UserController.fetchUsers)

module.exports = router
