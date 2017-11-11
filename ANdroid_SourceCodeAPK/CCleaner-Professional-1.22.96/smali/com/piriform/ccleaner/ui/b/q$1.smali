.class final Lcom/piriform/ccleaner/ui/b/q$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/ui/b/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/ui/b/q;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/ui/b/q;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/b/q$1;->a:Lcom/piriform/ccleaner/ui/b/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/b/q$1;->a:Lcom/piriform/ccleaner/ui/b/q;

    invoke-virtual {v0, p2}, Lcom/piriform/ccleaner/ui/b/q;->a(Z)V

    .line 80
    return-void
.end method
