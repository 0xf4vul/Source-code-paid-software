.class final Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/professional/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity$2;->b:Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity$2;->b:Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity;

    invoke-static {v0}, Lcom/piriform/ccleaner/professional/ProfessionalPurchasedActivity;->a(Landroid/content/Context;)V

    .line 65
    iget-object v0, p0, Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity$2;->b:Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity;->finish()V

    .line 66
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 70
    iget-object v0, p0, Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity$2;->b:Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity;

    iget-object v0, v0, Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity;->n:Lcom/novoda/notils/c/b/e;

    iget-object v1, p0, Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity$2;->b:Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity;

    const v2, 0x7f080278

    invoke-virtual {v1, v2}, Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/novoda/notils/c/b/e;->a(Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public final c()V
    .locals 3

    .prologue
    .line 75
    iget-object v0, p0, Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity$2;->b:Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity;

    iget-object v0, v0, Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity;->n:Lcom/novoda/notils/c/b/e;

    iget-object v1, p0, Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity$2;->b:Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity;

    const v2, 0x7f080279

    invoke-virtual {v1, v2}, Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/novoda/notils/c/b/e;->a(Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 80
    invoke-static {}, Lcom/piriform/ccleaner/CCleanerApplication;->a()Lcom/piriform/ccleaner/j/bl;

    move-result-object v0

    invoke-interface {v0}, Lcom/piriform/ccleaner/j/bl;->c()Lcom/piriform/ccleaner/b/e;

    move-result-object v0

    const-string/jumbo v1, "Upgrade to Pro Screen: Purchase dialog failed with permanent error from play store"

    .line 81
    invoke-interface {v0, v1}, Lcom/piriform/ccleaner/b/e;->a(Ljava/lang/String;)V

    .line 82
    return-void
.end method
