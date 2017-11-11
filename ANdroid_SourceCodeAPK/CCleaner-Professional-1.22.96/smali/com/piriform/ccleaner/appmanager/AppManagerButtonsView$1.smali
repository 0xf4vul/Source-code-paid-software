.class final Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView$1;->a:Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView$1;->a:Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;

    invoke-static {v0}, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;->a(Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;)Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 49
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 41
    :pswitch_1
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView$1;->a:Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;

    invoke-static {v0}, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;->a(Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;)Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView$a;->b()V

    goto :goto_0

    .line 42
    :pswitch_2
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView$1;->a:Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;

    invoke-static {v0}, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;->a(Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;)Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView$a;->c()V

    goto :goto_0

    .line 43
    :pswitch_3
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView$1;->a:Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;

    invoke-static {v0}, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;->a(Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;)Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView$a;->d()V

    goto :goto_0

    .line 44
    :pswitch_4
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView$1;->a:Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;

    invoke-static {v0}, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;->a(Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;)Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView$a;->a()V

    goto :goto_0

    .line 40
    :pswitch_data_0
    .packed-switch 0x7f100150
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
