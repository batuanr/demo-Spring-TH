package controller;

import controller.model.Customer;
import controller.service.CustomerService;
import controller.service.CustomerServiceFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import java.util.List;

@Controller
public class CustomerController {
    private CustomerService customerService = CustomerServiceFactory.getInstance();

    @GetMapping("/customer")
    public ModelAndView showList() {
        ModelAndView modelAndView = new ModelAndView("list");
        List<Customer> customers = customerService.findAll();
        modelAndView.addObject("customers", customers);
        return modelAndView;
    }

    @GetMapping("/info/{id}")
    public ModelAndView getCustomer(@PathVariable Long id){
        ModelAndView modelAndView = new ModelAndView("info");
        Customer customer = customerService.findOne(id);
        modelAndView.addObject("customer", customer);
        return modelAndView;
    }
//    @PostMapping("/info/{id}")
//    public ModelAndView update(@PathVariable long id, String name, String email, String address){
//        ModelAndView modelAndView = new ModelAndView("redilect");
////        List<Customer> customers = customerService.findAll();
//        Customer customer = new Customer(id, name, email, address);
//        customerService.save(customer);
////        for (int i = 0; i < customers.size(); i++) {
////            if (customers.get(i).getId() == id){
////                customers.set(i) = customerService.save(customer);
////
////            }
////        }
//        modelAndView.addObject("customers", customers);
//        return modelAndView;
//    }
    @PostMapping("/info/{id}")
    public RedirectView redirect(@PathVariable long id, String name, String email, String address){
        Customer customer = new Customer(id, name, email, address);
        customerService.save(customer);
        return new RedirectView("/customer");
    }
}
