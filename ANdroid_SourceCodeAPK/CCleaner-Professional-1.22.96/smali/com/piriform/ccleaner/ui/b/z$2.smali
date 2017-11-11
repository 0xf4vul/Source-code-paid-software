.class final Lcom/piriform/ccleaner/ui/b/z$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/ui/b/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/CheckBox;

.field final synthetic b:Lcom/piriform/ccleaner/ui/b/z;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/ui/b/z;Landroid/widget/CheckBox;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/b/z$2;->b:Lcom/piriform/ccleaner/ui/b/z;

    iput-object p2, p0, Lcom/piriform/ccleaner/ui/b/z$2;->a:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 68
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/b/z$2;->a:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/piriform/ccleaner/ui/b/z$2;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 69
    return-void

    .line 68
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
