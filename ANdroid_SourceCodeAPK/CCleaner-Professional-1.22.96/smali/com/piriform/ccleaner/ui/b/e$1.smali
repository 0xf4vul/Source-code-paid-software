.class final Lcom/piriform/ccleaner/ui/b/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/piriform/ccleaner/ui/b/e;->a(Landroid/view/View;Landroid/view/ViewGroup;Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/ui/b/e;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/ui/b/e;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/b/e$1;->a:Lcom/piriform/ccleaner/ui/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/b/e$1;->a:Lcom/piriform/ccleaner/ui/b/e;

    invoke-virtual {v0, p2}, Lcom/piriform/ccleaner/ui/b/e;->a(Z)V

    .line 90
    return-void
.end method
