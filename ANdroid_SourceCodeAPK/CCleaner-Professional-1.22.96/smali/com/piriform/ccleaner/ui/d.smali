.class public final Lcom/piriform/ccleaner/ui/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/piriform/ccleaner/ui/d$c;,
        Lcom/piriform/ccleaner/ui/d$b;,
        Lcom/piriform/ccleaner/ui/d$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/app/AlertDialog;

.field final b:Lcom/piriform/ccleaner/ui/d$c;

.field final c:Lcom/piriform/ccleaner/ui/d$b;


# direct methods
.method public constructor <init>(Landroid/app/AlertDialog;Lcom/piriform/ccleaner/ui/d$c;Lcom/piriform/ccleaner/ui/d$b;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/d;->a:Landroid/app/AlertDialog;

    .line 22
    iput-object p2, p0, Lcom/piriform/ccleaner/ui/d;->b:Lcom/piriform/ccleaner/ui/d$c;

    .line 23
    iput-object p3, p0, Lcom/piriform/ccleaner/ui/d;->c:Lcom/piriform/ccleaner/ui/d$b;

    .line 24
    return-void
.end method
