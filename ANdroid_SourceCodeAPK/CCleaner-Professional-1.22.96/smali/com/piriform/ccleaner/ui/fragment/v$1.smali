.class final Lcom/piriform/ccleaner/ui/fragment/v$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/ui/fragment/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/piriform/ccleaner/ui/fragment/v;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/ui/fragment/v;I)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/fragment/v$1;->b:Lcom/piriform/ccleaner/ui/fragment/v;

    iput p2, p0, Lcom/piriform/ccleaner/ui/fragment/v$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/v$1;->b:Lcom/piriform/ccleaner/ui/fragment/v;

    iget v1, p0, Lcom/piriform/ccleaner/ui/fragment/v$1;->a:I

    invoke-virtual {v0, v1, p2}, Lcom/piriform/ccleaner/ui/fragment/v;->a(IZ)V

    .line 75
    return-void
.end method
