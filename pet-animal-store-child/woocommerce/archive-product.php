<?php
/**
 * The Template for displaying product archives, including the main shop page which is a post type archive
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/archive-product.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you
 * (the theme developer) will need to copy the new files to your theme to
 * maintain compatibility. We try to do this as little as possible, but it does
 * happen. When this occurs the version of the template file will be bumped and
 * the readme will list any important changes.
 *
 * @see https://docs.woocommerce.com/document/template-structure/
 * @package WooCommerce/Templates
 * @version 3.4.0
 */

defined( 'ABSPATH' ) || exit;
get_header( 'shop' ); 

?>
<style type="text/css">
	button.single_add_to_cart_button.button.alt {
	    padding: 6px;
	    width: 80%;
	}
	button.minus, button.plus {
	    color: #fff;
	    background: #9a1cbb;
	    border: 1px solid #9a1cbb;
	}
	span.price {
	    color: #83df00;
	    font-size: 12px;
	    font-weight: bold;
	}
	.hide_block{
		display: none;
	}
	input, button, select, optgroup, textarea, .woocommerce .quantity .qty {
	    padding: 4px;
	    font-size: 13px;
	}
	.steps_button {
	    font-weight: bold;
	    color: #333333;
	    background: none;
	    border: 1px solid #333333;
	    padding: 7px 10px;
	    border-radius: 4px;
	    margin-left: 20px;
	    margin-right: 20px;
	}
	.cat_outer{
    	padding: 10px 0px;
    	margin: 10px 0px;
	}
	
	.cat_names {
	    font-weight: 500;
	    line-height: 1.5em;
	    font-size: 14px;
	    color: #928585;
	    padding: 10px 20px 10px 0px;
	    cursor: pointer;
	}

	a.active {
	    color: #121111;
	    font-weight: bold;
	    text-decoration: underline;
	}
	.woocommerce button[name="update_cart"],
	.woocommerce input[name="update_cart"] {
		display: none;
	}
</style>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
  crossorigin="anonymous"></script>
<!-- <?php 
  //wp_enqueue_script('custom_script', get_bloginfo('stylesheet_directory') . '/js/ajax_add_to_cart.js', array('jquery'),'1.0' );
?> -->

<main id="main" role="main" class="container middle-align py-4">
	<div class="row m-0">
		<div class="col-lg-8 col-md-8">
			<?php
				$cat_args = array('hide_empty' => 1);
				$product_categories = get_terms('product_cat', $cat_args ); 
				$total_categories = count($product_categories);
				?>
				<h2 style="font-weight: bold; font-size: 23px;">Make My Own</h2>
				<div class="cat_outer">
				<?php foreach ($product_categories as $key => $category) { ?>
					<a class="cat_names" id="main_cat_<?php echo ++$key; ?>" href="http://localhost/drpupper/product-category/<?php echo $category->slug; ?>"><?php echo $category->name; ?></a>
	        	<?php } ?>
	        	</div>
	            <?php foreach($product_categories as $key => $category) { ?>
	            <div class="main-cat-bloks hide_block" id="product_cat_<?php echo ++$key; ?>">
				    <table class="shop_table shop_table_responsive cart woocommerce-cart-form__contents" cellspacing="0">
					<thead>
						<tr>
							<th class="product-thumbnail"></th>
							<th class="product-name"><?php esc_html_e( 'Name', 'woocommerce' ); ?></th>
							<th class="product-variable"><?php esc_html_e( 'Units', 'woocommerce' ); ?><?php if(get_field('units',$category->taxonomy.'_'.$category->term_id)) { echo '/ '.get_field('units',$category->taxonomy.'_'.$category->term_id); } ?></th>
							<th class="product-calories"><?php esc_html_e( 'Calories', 'woocommerce' ); ?><?php if(get_field('units',$category->taxonomy.'_'.$category->term_id)) { echo '/ '.get_field('units',$category->taxonomy.'_'.$category->term_id); } ?></th>
							<th class="product-protein"><?php esc_html_e( 'Protein', 'woocommerce' ); ?></th>
							<th class="product-price"><?php esc_html_e( 'Price', 'woocommerce' ); ?></th>
							<th class="product-addtocart"><?php esc_html_e( 'Total', 'woocommerce' ); ?></th>
						</tr>
					</thead>
					<tbody>
					<?php 
					$args = array( 
						'post_type' => 'product', 
						'posts_per_page' => -1, 
						'product_cat' => $category->slug, 
						'orderby' =>'date',
						'order' => 'DESC' 
					);
				    $loop = new WP_Query( $args );
				    while ( $loop->have_posts() ) : $loop->the_post();
				    global $product;
				    $myNum = 0;
				    ?>
					<tr class="woocommerce-cart-form__cart-item single_product_<?php echo $product->get_id(); ?>">
						<td class="product-thumbnail" style="width: 30px;">
							<form class="variations_form cart">
								<input class="single_add_to_cart_button" type="checkbox" id="<?php echo $product->get_id(); ?>">
								<input type="hidden" name="add-to-cart" value="<?php echo $product->get_id(); ?>">
								<input type="hidden" name="product_id" value="<?php echo $product->get_id(); ?>">
								<input type="hidden" name="variation_id" class="variation_id">
							</form>
						</td>
						<td class="product-name" style="font-size: 15px;" data-title="<?php esc_html_e( 'Product', 'woocommerce' ); ?>">
							<?php if($myNum % 2 == 0){ ?>
								<img src="http://localhost/drpupper/wp-content/uploads/2022/03/veg.png" style="width: 15px;">
							<?php } else {?>
								<img src="http://localhost/drpupper/wp-content/uploads/2022/03/non-veg.png" style="width: 15px;">
							<?php } ?>
							<?php echo get_the_title(); ?>
						</td>
						<td class="product-quantity" data-title="<?php esc_attr_e( 'Quantity', 'woocommerce' ); ?>">
							<div class="quantity custom_quantity">
								<button type="button" class="minus">-</button>
									<input type="number" class="input-text qty text" step="1" min="1" max="" name="quantity" value="1" title="Qty" size="4" placeholder="" inputmode="numeric" autocomplete="off">
									<input type="hidden" class="main_product" value="<?php echo $product->get_id(); ?>">
									<input type="hidden" class="main_price" value="<?php echo $product->get_price(); ?>">
								<button type="button" class="plus">+</button>
							</div>
						</td>
						
						<td class="product-calories" data-title="<?php esc_attr_e( 'Calories', 'woocommerce' ); ?>">
							<?php echo get_post_meta( $product->get_id(), 'calories', true ); ?>
						</td>
						<td class="product-protein" data-title="<?php esc_attr_e( 'Protein', 'woocommerce' ); ?>">
							<?php echo get_post_meta( $product->get_id(), 'protein', true ); ?>
						</td>
						
						<td class="product-price" style="font-size: 10px;" data-title="<?php esc_attr_e( 'Price', 'woocommerce' ); ?>">
						<?php if ( $price_html = $product->get_price_html() ) : ?>
							<span class="price"><?php echo $price_html; ?></span>
						<?php endif; ?>
						</td>
						<td class="product-addtocart" data-title="<?php esc_attr_e( 'Action', 'woocommerce' ); ?>">
							<span class="price totalprice"><?php echo '₹'.$product->get_price().'.00'; ?></span>
						</td>
					</tr>
					<?php 
						$myNum++;
						endwhile;
						wp_reset_query();
					?>
					</tbody>
					</table>
					<div>
						<?php 
							$previous_class = ($key == 1) ? 'disabled wc-variation-selection-needed' : 'move_to_previus'; 
							$next_class = ($key == $total_categories) ? 'disabled wc-variation-selection-needed' : 'move_to_next';
						?>
						<button id="<?php echo $key; ?>" class="button <?php echo $previous_class; ?>">Previous</button>
						<span class="steps_button"><?php echo $key; ?> / <?php echo $total_categories; ?></span>
						<button id="<?php echo $key; ?>" class="button <?php echo $next_class; ?>">Next</button>
					</div>	
				</div>
				<?php } ?>
		</div>
		<div class="col-lg-4 col-md-4">
			<h2 style="font-weight: 700;padding: 9px 0px;line-height: 1.5em;font-size: 20px;">Your Bowl</h2>
			<div id="cart_data">
				<?php echo do_shortcode('[woocommerce_cart]'); ?>
			</div>
		</div>
	</div>
</main>
<script type="text/javascript">
	$(document).ready(function($) {
		$('.main-cat-bloks:first').removeClass('hide_block');
		$('.cat_names:first').addClass('active');

		$('.single_add_to_cart_button').on('click', function(){ 
		    $thisbutton = $(this),
		       $form = $thisbutton.closest('form.cart'),
		       id = $thisbutton.val(),
		       product_id = $form.find('input[name=product_id]').val() || id,
		       variation_id = $form.find('input[name=variation_id]').val() || 0;
		    var product_qty = $('.single_product_'+product_id).find( '.qty' ).val(); 
		    var data = {
		            action: 'ql_woocommerce_ajax_add_to_cart',
		            product_id: product_id,
		            product_sku: '',
		            quantity: product_qty,
		            variation_id: variation_id,
		        };
		    $.ajax({
		            type: 'post',
		            url: wc_add_to_cart_params.ajax_url,
		            data: data,
		            success: function (response) { 
		                if (response.error & response.product_url) {
		                    window.location = response.product_url;
		                    return;
		                }
		                else
		                {
		                	$('#cart_data').empty().append(response);
		                }

		            }, 
		        }); 
		     });



		/*$('.single_add_to_cart_button').on('click', function(e){ 
		    e.preventDefault();
			$thisbutton = $(this),
		    $form = $thisbutton.closest('form.cart'),
		    product_id = $form.find('input[name=product_id]').val(),
		    variation_id = $form.find('input[name=variation_id]').val();
		    $main_class = $('.single_product_'+product_id);
		    $product_qty =  $main_class.find('input[name=quantity]').val() || 1;
		    window.location.href="http://localhost/drpupper/shop/?add-to-cart="+product_id+"&quantity="+$product_qty;
		}); */


		$('.move_to_previus').on('click', function(e){ 
		    e.preventDefault();
		    var previus_block = this.id;
		    previus_block--;
		    $('#product_cat_'+this.id).addClass('hide_block');
		    $('#product_cat_'+previus_block).removeClass('hide_block');
		    $('.cat_names').removeClass('active');
		    $('#main_cat_'+previus_block).addClass('active'); 
		}); 
		
		$('.move_to_next').on('click', function(e){ 
		    e.preventDefault();
		    var next_block = this.id;
		    next_block++;
		    $('#product_cat_'+this.id).addClass('hide_block');
		    $('#product_cat_'+next_block).removeClass('hide_block');
		    $('.cat_names').removeClass('active');
		    $('#main_cat_'+next_block).addClass('active');
		}); 
	});


	 $(document).on( 'click', 'button.plus, button.minus', function() {
        var qty = $( this ).parent( '.quantity' ).find( '.qty' );
        var product_id = $( this ).parent( '.quantity' ).find( '.main_product' ).val();
        var price = $( this ).parent( '.quantity' ).find( '.main_price' );
        var val = parseFloat(qty.val());
        var max = parseFloat(qty.attr( 'max' ));
        var min = parseFloat(qty.attr( 'min' ));
        var step = parseFloat(qty.attr( 'step' ));
        var n_price = parseFloat(price.val());
        $main_class = $('.single_product_'+product_id); 
 		if ( $( this ).is( '.plus' ) ) 
            {
                if ( max && ( max <= val ) ) 
                { 
                    qty.val( max ).change(); 
                } 
                else
                { 
                    qty.val( val + step ).change(); 
                    $main_class.find('.totalprice').text('₹'+(val + step)*n_price+'.00');
                } 
            } 
            else
            { 
                if ( min && ( min >= val ) ) 
                {
                    qty.val( min ).change();
                } 
                else if ( val > 1 ) 
                {
                    qty.val( val - step ).change();
                    $main_class.find('.totalprice').text('₹'+(val - step)*n_price+'.00');
                }
            }
        });

/*var timeout;
$( function( $ ) {
	$('.woocommerce').on('change', 'input.qty', function(){
		if ( timeout !== undefined ) {
			clearTimeout( timeout );
		}
		timeout = setTimeout(function() {
			$("[name='update_cart']").trigger("click");
		}, 1000 ); // 1 second delay, half a second (500) seems comfortable too
	});
} );*/

</script>
<?php
get_footer( 'shop' );