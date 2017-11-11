.class final Lcom/piriform/ccleaner/ui/b/m$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/piriform/ccleaner/ui/b/m;->a(Landroid/content/Context;Landroid/widget/CheckBox;Lcom/piriform/ccleaner/f/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/f/j;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/piriform/ccleaner/ui/b/m;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/ui/b/m;Lcom/piriform/ccleaner/f/j;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/b/m$1;->c:Lcom/piriform/ccleaner/ui/b/m;

    iput-object p2, p0, Lcom/piriform/ccleaner/ui/b/m$1;->a:Lcom/piriform/ccleaner/f/j;

    iput-object p3, p0, Lcom/piriform/ccleaner/ui/b/m$1;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 74
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/b/m$1;->a:Lcom/piriform/ccleaner/f/j;

    .line 1243
    iget v3, v0, Lcom/piriform/ccleaner/f/j;->e:I

    .line 75
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/piriform/ccleaner/ui/b/m$1;->a:Lcom/piriform/ccleaner/f/j;

    .line 1265
    iget-boolean v0, v0, Lcom/piriform/ccleaner/f/j;->b:Z

    .line 76
    if-eqz v0, :cond_1

    if-lez v3, :cond_1

    move v0, v1

    .line 78
    :goto_0
    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/b/m$1;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f09000f

    new-array v5, v1, [Ljava/lang/Object;

    .line 80
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    .line 79
    invoke-virtual {v0, v4, v3, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 81
    iget-object v2, p0, Lcom/piriform/ccleaner/ui/b/m$1;->b:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/b/m$1;->c:Lcom/piriform/ccleaner/ui/b/m;

    invoke-virtual {v0, p2}, Lcom/piriform/ccleaner/ui/b/m;->a(Z)V

    .line 85
    return-void

    :cond_1
    move v0, v2

    .line 76
    goto :goto_0
.end method
