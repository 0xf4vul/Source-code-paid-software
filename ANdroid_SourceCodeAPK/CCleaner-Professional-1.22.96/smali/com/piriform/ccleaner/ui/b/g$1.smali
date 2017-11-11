.class final Lcom/piriform/ccleaner/ui/b/g$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/piriform/ccleaner/ui/b/g;->a(Landroid/view/View;Landroid/view/ViewGroup;Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/core/data/AndroidPackage;

.field final synthetic b:Lcom/piriform/ccleaner/ui/b/g;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/ui/b/g;Lcom/piriform/ccleaner/core/data/AndroidPackage;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/b/g$1;->b:Lcom/piriform/ccleaner/ui/b/g;

    iput-object p2, p0, Lcom/piriform/ccleaner/ui/b/g$1;->a:Lcom/piriform/ccleaner/core/data/AndroidPackage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/b/g$1;->b:Lcom/piriform/ccleaner/ui/b/g;

    .line 1022
    iget-object v0, v0, Lcom/piriform/ccleaner/ui/b/g;->d:Lcom/piriform/ccleaner/s/f;

    .line 54
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/b/g$1;->a:Lcom/piriform/ccleaner/core/data/AndroidPackage;

    invoke-interface {v0, v1}, Lcom/piriform/ccleaner/s/f;->a(Lcom/piriform/ccleaner/core/data/AndroidPackage;)V

    .line 55
    return-void
.end method
