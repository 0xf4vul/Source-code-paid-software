.class public final Lcom/piriform/ccleaner/ui/d$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/ui/d$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/ui/d$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/ui/d$a;


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/ui/d$a;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/d$a$1;->a:Lcom/piriform/ccleaner/ui/d$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/piriform/ccleaner/ui/d;)V
    .locals 1

    .prologue
    .line 120
    .line 1050
    iget-object v0, p1, Lcom/piriform/ccleaner/ui/d;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 121
    return-void
.end method
