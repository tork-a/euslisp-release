;;
;; DO NOT EDIT THIS FILE
;; this file is automatically generated from euslisp+euslib version 
;;
;;
(defclass room73b2-uchida-shelf-1300-object
  :super cascaded-link
  :slots (sensors
         handle0
         ))
(defmethod room73b2-uchida-shelf-1300-object
  (:init
   (&rest args &key (name "room73b2-uchida-shelf-1300") (pos (float-vector 0 0 0)) (rot (unit-matrix 3)) &allow-other-keys)
   (let (c bc
         blink0
                 )
     (send-super* :init :name name args)

     ;; definition of link

     ;; definition of :room73b2-uchida-shelf-1300-bodyset2
     (setq bc (list
       (instance faceset :init :faces (list
         (instance face :init :vertices (list (float-vector 222.5 650.0 2100.0) (float-vector -222.5 650.0 2100.0) (float-vector -222.5 -650.0 2100.0) (float-vector 222.5 -650.0 2100.0)))
         (instance face :init :vertices (list (float-vector -222.5 650.0 2065.0) (float-vector 222.5 650.0 2065.0) (float-vector 222.5 -650.0 2065.0) (float-vector -222.5 -650.0 2065.0)))
         (instance face :init :vertices (list (float-vector 222.5 650.0 2100.0) (float-vector 222.5 650.0 2065.0) (float-vector -222.5 650.0 2065.0) (float-vector -222.5 650.0 2100.0)))
         (instance face :init :vertices (list (float-vector 222.5 -650.0 2100.0) (float-vector 222.5 -650.0 2065.0) (float-vector 222.5 650.0 2065.0) (float-vector 222.5 650.0 2100.0)))
         (instance face :init :vertices (list (float-vector -222.5 -650.0 2100.0) (float-vector -222.5 -650.0 2065.0) (float-vector 222.5 -650.0 2065.0) (float-vector 222.5 -650.0 2100.0)))
         (instance face :init :vertices (list (float-vector -222.5 650.0 2100.0) (float-vector -222.5 650.0 2065.0) (float-vector -222.5 -650.0 2065.0) (float-vector -222.5 -650.0 2100.0)))
       ))
       (instance faceset :init :faces (list
         (instance face :init :vertices (list (float-vector -187.5 -615.5 2065.5) (float-vector -222.5 -615.5 2065.5) (float-vector -222.5 -650.5 2065.5) (float-vector -187.5 -650.5 2065.5)))
         (instance face :init :vertices (list (float-vector -222.5 -615.5 0.5) (float-vector -187.5 -615.5 0.5) (float-vector -187.5 -650.5 0.5) (float-vector -222.5 -650.5 0.5)))
         (instance face :init :vertices (list (float-vector -187.5 -615.5 2065.5) (float-vector -187.5 -615.5 0.5) (float-vector -222.5 -615.5 0.5) (float-vector -222.5 -615.5 2065.5)))
         (instance face :init :vertices (list (float-vector -187.5 -650.5 2065.5) (float-vector -187.5 -650.5 0.5) (float-vector -187.5 -615.5 0.5) (float-vector -187.5 -615.5 2065.5)))
         (instance face :init :vertices (list (float-vector -222.5 -650.5 2065.5) (float-vector -222.5 -650.5 0.5) (float-vector -187.5 -650.5 0.5) (float-vector -187.5 -650.5 2065.5)))
         (instance face :init :vertices (list (float-vector -222.5 -615.5 2065.5) (float-vector -222.5 -615.5 0.5) (float-vector -222.5 -650.5 0.5) (float-vector -222.5 -650.5 2065.5)))
       ))
       (instance faceset :init :faces (list
         (instance face :init :vertices (list (float-vector -187.5 650.5 2065.5) (float-vector -222.5 650.5 2065.5) (float-vector -222.5 615.5 2065.5) (float-vector -187.5 615.5 2065.5)))
         (instance face :init :vertices (list (float-vector -222.5 650.5 0.5) (float-vector -187.5 650.5 0.5) (float-vector -187.5 615.5 0.5) (float-vector -222.5 615.5 0.5)))
         (instance face :init :vertices (list (float-vector -187.5 650.5 2065.5) (float-vector -187.5 650.5 0.5) (float-vector -222.5 650.5 0.5) (float-vector -222.5 650.5 2065.5)))
         (instance face :init :vertices (list (float-vector -187.5 615.5 2065.5) (float-vector -187.5 615.5 0.5) (float-vector -187.5 650.5 0.5) (float-vector -187.5 650.5 2065.5)))
         (instance face :init :vertices (list (float-vector -222.5 615.5 2065.5) (float-vector -222.5 615.5 0.5) (float-vector -187.5 615.5 0.5) (float-vector -187.5 615.5 2065.5)))
         (instance face :init :vertices (list (float-vector -222.5 650.5 2065.5) (float-vector -222.5 650.5 0.5) (float-vector -222.5 615.5 0.5) (float-vector -222.5 615.5 2065.5)))
       ))
       (instance faceset :init :faces (list
         (instance face :init :vertices (list (float-vector 222.5 -615.5 2065.5) (float-vector 187.5 -615.5 2065.5) (float-vector 187.5 -650.5 2065.5) (float-vector 222.5 -650.5 2065.5)))
         (instance face :init :vertices (list (float-vector 187.5 -615.5 0.5) (float-vector 222.5 -615.5 0.5) (float-vector 222.5 -650.5 0.5) (float-vector 187.5 -650.5 0.5)))
         (instance face :init :vertices (list (float-vector 222.5 -615.5 2065.5) (float-vector 222.5 -615.5 0.5) (float-vector 187.5 -615.5 0.5) (float-vector 187.5 -615.5 2065.5)))
         (instance face :init :vertices (list (float-vector 222.5 -650.5 2065.5) (float-vector 222.5 -650.5 0.5) (float-vector 222.5 -615.5 0.5) (float-vector 222.5 -615.5 2065.5)))
         (instance face :init :vertices (list (float-vector 187.5 -650.5 2065.5) (float-vector 187.5 -650.5 0.5) (float-vector 222.5 -650.5 0.5) (float-vector 222.5 -650.5 2065.5)))
         (instance face :init :vertices (list (float-vector 187.5 -615.5 2065.5) (float-vector 187.5 -615.5 0.5) (float-vector 187.5 -650.5 0.5) (float-vector 187.5 -650.5 2065.5)))
       ))
       (instance faceset :init :faces (list
         (instance face :init :vertices (list (float-vector 222.5 650.5 2065.5) (float-vector 187.5 650.5 2065.5) (float-vector 187.5 615.5 2065.5) (float-vector 222.5 615.5 2065.5)))
         (instance face :init :vertices (list (float-vector 187.5 650.5 0.5) (float-vector 222.5 650.5 0.5) (float-vector 222.5 615.5 0.5) (float-vector 187.5 615.5 0.5)))
         (instance face :init :vertices (list (float-vector 222.5 650.5 2065.5) (float-vector 222.5 650.5 0.5) (float-vector 187.5 650.5 0.5) (float-vector 187.5 650.5 2065.5)))
         (instance face :init :vertices (list (float-vector 222.5 615.5 2065.5) (float-vector 222.5 615.5 0.5) (float-vector 222.5 650.5 0.5) (float-vector 222.5 650.5 2065.5)))
         (instance face :init :vertices (list (float-vector 187.5 615.5 2065.5) (float-vector 187.5 615.5 0.5) (float-vector 222.5 615.5 0.5) (float-vector 222.5 615.5 2065.5)))
         (instance face :init :vertices (list (float-vector 187.5 650.5 2065.5) (float-vector 187.5 650.5 0.5) (float-vector 187.5 615.5 0.5) (float-vector 187.5 615.5 2065.5)))
       ))
       (instance faceset :init :faces (list
         (instance face :init :vertices (list (float-vector 214.0 641.5 1417.5) (float-vector -214.0 641.5 1417.5) (float-vector -214.0 -641.5 1417.5) (float-vector 214.0 -641.5 1417.5)))
         (instance face :init :vertices (list (float-vector -214.0 641.5 1382.5) (float-vector 214.0 641.5 1382.5) (float-vector 214.0 -641.5 1382.5) (float-vector -214.0 -641.5 1382.5)))
         (instance face :init :vertices (list (float-vector 214.0 641.5 1417.5) (float-vector 214.0 641.5 1382.5) (float-vector -214.0 641.5 1382.5) (float-vector -214.0 641.5 1417.5)))
         (instance face :init :vertices (list (float-vector 214.0 -641.5 1417.5) (float-vector 214.0 -641.5 1382.5) (float-vector 214.0 641.5 1382.5) (float-vector 214.0 641.5 1417.5)))
         (instance face :init :vertices (list (float-vector -214.0 -641.5 1417.5) (float-vector -214.0 -641.5 1382.5) (float-vector 214.0 -641.5 1382.5) (float-vector 214.0 -641.5 1417.5)))
         (instance face :init :vertices (list (float-vector -214.0 641.5 1417.5) (float-vector -214.0 641.5 1382.5) (float-vector -214.0 -641.5 1382.5) (float-vector -214.0 -641.5 1417.5)))
       ))
       (instance faceset :init :faces (list
         (instance face :init :vertices (list (float-vector 214.0 641.5 1767.5) (float-vector -214.0 641.5 1767.5) (float-vector -214.0 -641.5 1767.5) (float-vector 214.0 -641.5 1767.5)))
         (instance face :init :vertices (list (float-vector -214.0 641.5 1732.5) (float-vector 214.0 641.5 1732.5) (float-vector 214.0 -641.5 1732.5) (float-vector -214.0 -641.5 1732.5)))
         (instance face :init :vertices (list (float-vector 214.0 641.5 1767.5) (float-vector 214.0 641.5 1732.5) (float-vector -214.0 641.5 1732.5) (float-vector -214.0 641.5 1767.5)))
         (instance face :init :vertices (list (float-vector 214.0 -641.5 1767.5) (float-vector 214.0 -641.5 1732.5) (float-vector 214.0 641.5 1732.5) (float-vector 214.0 641.5 1767.5)))
         (instance face :init :vertices (list (float-vector -214.0 -641.5 1767.5) (float-vector -214.0 -641.5 1732.5) (float-vector 214.0 -641.5 1732.5) (float-vector 214.0 -641.5 1767.5)))
         (instance face :init :vertices (list (float-vector -214.0 641.5 1767.5) (float-vector -214.0 641.5 1732.5) (float-vector -214.0 -641.5 1732.5) (float-vector -214.0 -641.5 1767.5)))
       ))
       ))
     (dolist (b (cdr bc)) (send (car bc) :assoc b))
     (send (elt bc 0) :set-color :lightgoldenrodyellow)
     (send (elt bc 1) :set-color :lightgoldenrodyellow)
     (send (elt bc 2) :set-color :lightgoldenrodyellow)
     (send (elt bc 3) :set-color :lightgoldenrodyellow)
     (send (elt bc 4) :set-color :lightgoldenrodyellow)
     (send (elt bc 5) :set-color :lightgoldenrodyellow)
     (send (elt bc 6) :set-color :lightgoldenrodyellow)
     (setq blink0 (instance bodyset-link :init (make-cascoords) :bodies bc :name :room73b2-uchida-shelf-1300-bodyset2 :weight 1 :centroid (float-vector 0.0 0.0 0.0) :inertia-tensor #2f((1.0 0.0 0.0) (0.0 1.0 0.0) (0.0 0.0 1.0))))

     ;; definition of assoc
     (send self :assoc blink0)

     ;; definition of end-coords

     ;; definition of joint


     ;; definition of :handle
     (setq handle0 (make-cascoords :pos (float-vector 0.0 0.0 0.0) :rot #2f((1.0 0.0 0.0) (0.0 1.0 0.0) (0.0 0.0 1.0)) :name "handle0"))
     (send blink0 :assoc handle0)

     ;; init-ending 
     (setq links (list blink0))
     (setq joint-list (list))
     (send self :init-ending)
     (send self :move-to (make-coords :pos pos :rot rot))
     (send-all links :worldcoords)

     self))

  (:handle (&rest args) (forward-message-to-all (list  handle0) args))
  (:handle-handle0 (&rest args) (forward-message-to handle0 args))
  (:attention (&rest args) (forward-message-to-all (list ) args))
  (:button (&rest args) (forward-message-to-all (list ) args))
  )

(defun room73b2-uchida-shelf-1300 (&rest args) (instance* room73b2-uchida-shelf-1300-object :init args))
;; (format *error-output* "(instance room73b2-uchida-shelf-1300-object :init) for generating model~%")