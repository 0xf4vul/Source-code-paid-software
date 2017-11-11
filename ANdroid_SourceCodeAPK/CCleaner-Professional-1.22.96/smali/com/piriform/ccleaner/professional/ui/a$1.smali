.class final Lcom/piriform/ccleaner/professional/ui/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/professional/ui/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/professional/ui/a;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/professional/ui/a;)V
    .locals 0

    .prologue
    .line 10
    iput-object p1, p0, Lcom/piriform/ccleaner/professional/ui/a$1;->a:Lcom/piriform/ccleaner/professional/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 13
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 14
    return-void
.end method
