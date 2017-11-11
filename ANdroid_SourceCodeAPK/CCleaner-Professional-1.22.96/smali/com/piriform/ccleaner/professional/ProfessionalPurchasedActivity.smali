.class public Lcom/piriform/ccleaner/professional/ProfessionalPurchasedActivity;
.super Lcom/piriform/ccleaner/ui/activity/a;
.source "SourceFile"


# instance fields
.field m:Lcom/piriform/ccleaner/b/a;

.field n:Lcom/piriform/ccleaner/professional/l;

.field private o:Landroid/widget/ImageView;

.field private p:Landroid/widget/Button;

.field private q:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/activity/a;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 97
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/piriform/ccleaner/professional/ProfessionalPurchasedActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 98
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 99
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/piriform/ccleaner/professional/ProfessionalPurchasedActivity;->m:Lcom/piriform/ccleaner/b/a;

    sget-object v1, Lcom/piriform/ccleaner/b/b;->aG:Lcom/piriform/ccleaner/b/b;

    invoke-interface {v0, v1}, Lcom/piriform/ccleaner/b/a;->a(Lcom/piriform/ccleaner/b/b;)V

    .line 104
    invoke-super {p0}, Lcom/piriform/ccleaner/ui/activity/a;->onBackPressed()V

    .line 105
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/piriform/ccleaner/ui/activity/a;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-static {}, Lcom/piriform/ccleaner/CCleanerApplication;->a()Lcom/piriform/ccleaner/j/bl;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/piriform/ccleaner/j/bl;->a(Lcom/piriform/ccleaner/professional/ProfessionalPurchasedActivity;)V

    .line 41
    const v0, 0x7f030026

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/professional/ProfessionalPurchasedActivity;->setContentView(I)V

    .line 1024
    const v0, 0x7f10009c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 43
    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/piriform/ccleaner/professional/ProfessionalPurchasedActivity;->o:Landroid/widget/ImageView;

    .line 2024
    const v0, 0x7f10009d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 44
    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/piriform/ccleaner/professional/ProfessionalPurchasedActivity;->p:Landroid/widget/Button;

    .line 3024
    const v0, 0x7f10009e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 45
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/piriform/ccleaner/professional/ProfessionalPurchasedActivity;->q:Landroid/widget/TextView;

    .line 47
    iget-object v0, p0, Lcom/piriform/ccleaner/professional/ProfessionalPurchasedActivity;->q:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 4024
    const v0, 0x7f10009b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3092
    check-cast v0, Landroid/widget/TextView;

    .line 3093
    const v1, 0x7f08023a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 4076
    iget-object v0, p0, Lcom/piriform/ccleaner/professional/ProfessionalPurchasedActivity;->p:Landroid/widget/Button;

    new-instance v1, Lcom/piriform/ccleaner/professional/ProfessionalPurchasedActivity$2;

    invoke-direct {v1, p0}, Lcom/piriform/ccleaner/professional/ProfessionalPurchasedActivity$2;-><init>(Lcom/piriform/ccleaner/professional/ProfessionalPurchasedActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5062
    iget-object v0, p0, Lcom/piriform/ccleaner/professional/ProfessionalPurchasedActivity;->q:Landroid/widget/TextView;

    new-instance v1, Lcom/piriform/ccleaner/professional/ProfessionalPurchasedActivity$1;

    invoke-direct {v1, p0}, Lcom/piriform/ccleaner/professional/ProfessionalPurchasedActivity$1;-><init>(Lcom/piriform/ccleaner/professional/ProfessionalPurchasedActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6021
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/a;->r:Lcom/piriform/ccleaner/ui/f;

    .line 6046
    iget-object v0, v0, Lcom/piriform/ccleaner/ui/f;->a:Landroid/support/v7/widget/Toolbar;

    .line 54
    if-eqz v0, :cond_0

    .line 7021
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/a;->r:Lcom/piriform/ccleaner/ui/f;

    .line 7046
    iget-object v0, v0, Lcom/piriform/ccleaner/ui/f;->a:Landroid/support/v7/widget/Toolbar;

    .line 55
    invoke-virtual {p0}, Lcom/piriform/ccleaner/professional/ProfessionalPurchasedActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0027

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setBackgroundColor(I)V

    .line 7088
    :cond_0
    iget-object v0, p0, Lcom/piriform/ccleaner/professional/ProfessionalPurchasedActivity;->o:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/piriform/ccleaner/ui/b;->a(Landroid/view/View;)V

    .line 59
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 109
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 110
    iget-object v0, p0, Lcom/piriform/ccleaner/professional/ProfessionalPurchasedActivity;->m:Lcom/piriform/ccleaner/b/a;

    sget-object v1, Lcom/piriform/ccleaner/b/b;->aF:Lcom/piriform/ccleaner/b/b;

    invoke-interface {v0, v1}, Lcom/piriform/ccleaner/b/a;->a(Lcom/piriform/ccleaner/b/b;)V

    .line 112
    :cond_0
    invoke-super {p0, p1}, Lcom/piriform/ccleaner/ui/activity/a;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
