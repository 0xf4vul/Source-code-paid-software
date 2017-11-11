.class final Lcom/piriform/ccleaner/ui/b/w$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/piriform/ccleaner/ui/b/w;->a(Landroid/view/View;Landroid/view/ViewGroup;Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/ui/b/w;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/ui/b/w;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/b/w$1;->a:Lcom/piriform/ccleaner/ui/b/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/b/w$1;->a:Lcom/piriform/ccleaner/ui/b/w;

    invoke-virtual {v0, p2}, Lcom/piriform/ccleaner/ui/b/w;->a(Z)V

    .line 65
    return-void
.end method
