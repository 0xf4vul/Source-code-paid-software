.class final Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity$3;->a:Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity$3;->a:Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity;

    iget-object v0, v0, Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity;->p:Lcom/piriform/ccleaner/b/a;

    sget-object v1, Lcom/piriform/ccleaner/b/b;->aw:Lcom/piriform/ccleaner/b/b;

    invoke-interface {v0, v1}, Lcom/piriform/ccleaner/b/a;->a(Lcom/piriform/ccleaner/b/b;)V

    .line 114
    iget-object v0, p0, Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity$3;->a:Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity;

    invoke-static {v0}, Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity;->a(Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity;)V

    .line 115
    return-void
.end method
