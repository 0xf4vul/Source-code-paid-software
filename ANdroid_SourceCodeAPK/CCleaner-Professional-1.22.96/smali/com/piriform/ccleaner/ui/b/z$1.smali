.class final Lcom/piriform/ccleaner/ui/b/z$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/ui/b/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/ui/b/z;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/ui/b/z;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/b/z$1;->a:Lcom/piriform/ccleaner/ui/b/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/b/z$1;->a:Lcom/piriform/ccleaner/ui/b/z;

    invoke-virtual {v0, p2}, Lcom/piriform/ccleaner/ui/b/z;->a(Z)V

    .line 60
    return-void
.end method
