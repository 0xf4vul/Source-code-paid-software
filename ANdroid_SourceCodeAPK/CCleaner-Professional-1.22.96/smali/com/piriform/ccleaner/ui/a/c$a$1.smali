.class final Lcom/piriform/ccleaner/ui/a/c$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/piriform/ccleaner/ui/a/c$a;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/piriform/ccleaner/ui/a/c$a;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/ui/a/c$a;I)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/a/c$a$1;->b:Lcom/piriform/ccleaner/ui/a/c$a;

    iput p2, p0, Lcom/piriform/ccleaner/ui/a/c$a$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/a/c$a$1;->b:Lcom/piriform/ccleaner/ui/a/c$a;

    iget-object v0, v0, Lcom/piriform/ccleaner/ui/a/c$a;->a:Lcom/piriform/ccleaner/ui/a/c;

    iget v1, p0, Lcom/piriform/ccleaner/ui/a/c$a$1;->a:I

    invoke-static {v0, v1}, Lcom/piriform/ccleaner/ui/a/c;->a(Lcom/piriform/ccleaner/ui/a/c;I)V

    .line 190
    return-void
.end method
