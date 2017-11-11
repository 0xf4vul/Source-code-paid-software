.class final Lcom/piriform/ccleaner/professional/ProfessionalPurchasedActivity$2;
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
    .line 77
    iput-object p1, p0, Lcom/piriform/ccleaner/professional/ProfessionalPurchasedActivity$2;->a:Lcom/piriform/ccleaner/professional/ProfessionalPurchasedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/piriform/ccleaner/professional/ProfessionalPurchasedActivity$2;->a:Lcom/piriform/ccleaner/professional/ProfessionalPurchasedActivity;

    iget-object v0, v0, Lcom/piriform/ccleaner/professional/ProfessionalPurchasedActivity;->m:Lcom/piriform/ccleaner/b/a;

    sget-object v1, Lcom/piriform/ccleaner/b/b;->aD:Lcom/piriform/ccleaner/b/b;

    invoke-interface {v0, v1}, Lcom/piriform/ccleaner/b/a;->a(Lcom/piriform/ccleaner/b/b;)V

    .line 81
    iget-object v0, p0, Lcom/piriform/ccleaner/professional/ProfessionalPurchasedActivity$2;->a:Lcom/piriform/ccleaner/professional/ProfessionalPurchasedActivity;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/professional/ProfessionalPurchasedActivity;->finish()V

    .line 82
    return-void
.end method
