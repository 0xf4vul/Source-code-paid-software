.class final Lcom/piriform/ccleaner/professional/ProfessionalPurchasedActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/professional/ProfessionalPurchasedActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/professional/ProfessionalPurchasedActivity;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/professional/ProfessionalPurchasedActivity;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/piriform/ccleaner/professional/ProfessionalPurchasedActivity$1;->a:Lcom/piriform/ccleaner/professional/ProfessionalPurchasedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/piriform/ccleaner/professional/ProfessionalPurchasedActivity$1;->a:Lcom/piriform/ccleaner/professional/ProfessionalPurchasedActivity;

    iget-object v0, v0, Lcom/piriform/ccleaner/professional/ProfessionalPurchasedActivity;->m:Lcom/piriform/ccleaner/b/a;

    sget-object v1, Lcom/piriform/ccleaner/b/b;->aE:Lcom/piriform/ccleaner/b/b;

    invoke-interface {v0, v1}, Lcom/piriform/ccleaner/b/a;->a(Lcom/piriform/ccleaner/b/b;)V

    .line 67
    iget-object v0, p0, Lcom/piriform/ccleaner/professional/ProfessionalPurchasedActivity$1;->a:Lcom/piriform/ccleaner/professional/ProfessionalPurchasedActivity;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/professional/ProfessionalPurchasedActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080241

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 68
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 69
    iget-object v0, p0, Lcom/piriform/ccleaner/professional/ProfessionalPurchasedActivity$1;->a:Lcom/piriform/ccleaner/professional/ProfessionalPurchasedActivity;

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/professional/ProfessionalPurchasedActivity;->startActivity(Landroid/content/Intent;)V

    .line 70
    return-void
.end method
