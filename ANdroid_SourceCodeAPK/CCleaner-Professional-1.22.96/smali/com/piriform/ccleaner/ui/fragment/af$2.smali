.class final Lcom/piriform/ccleaner/ui/fragment/af$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/piriform/ccleaner/ui/fragment/af;->b()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/ui/fragment/af$a;

.field final synthetic b:Lcom/piriform/ccleaner/ui/fragment/af;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/ui/fragment/af;Lcom/piriform/ccleaner/ui/fragment/af$a;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/fragment/af$2;->b:Lcom/piriform/ccleaner/ui/fragment/af;

    iput-object p2, p0, Lcom/piriform/ccleaner/ui/fragment/af$2;->a:Lcom/piriform/ccleaner/ui/fragment/af$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 59
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/af$2;->a:Lcom/piriform/ccleaner/ui/fragment/af$a;

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/fragment/af$2;->b:Lcom/piriform/ccleaner/ui/fragment/af;

    invoke-static {v1}, Lcom/piriform/ccleaner/ui/fragment/af;->a(Lcom/piriform/ccleaner/ui/fragment/af;)Lcom/piriform/ccleaner/ui/b/d;

    move-result-object v1

    iget-object v2, p0, Lcom/piriform/ccleaner/ui/fragment/af$2;->b:Lcom/piriform/ccleaner/ui/fragment/af;

    invoke-static {v2}, Lcom/piriform/ccleaner/ui/fragment/af;->b(Lcom/piriform/ccleaner/ui/fragment/af;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/piriform/ccleaner/ui/fragment/af$a;->a(Lcom/piriform/ccleaner/ui/b/d;Z)V

    .line 60
    return-void
.end method
