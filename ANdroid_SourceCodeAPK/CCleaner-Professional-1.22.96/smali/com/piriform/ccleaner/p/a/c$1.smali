.class final Lcom/piriform/ccleaner/p/a/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/piriform/ccleaner/p/a/c;->a(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lf/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/ContentResolver;

.field final synthetic b:Landroid/net/Uri;

.field final synthetic c:[Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:[Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/piriform/ccleaner/p/a/c$1;->a:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/piriform/ccleaner/p/a/c$1;->b:Landroid/net/Uri;

    iput-object p3, p0, Lcom/piriform/ccleaner/p/a/c$1;->c:[Ljava/lang/String;

    iput-object p4, p0, Lcom/piriform/ccleaner/p/a/c$1;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/piriform/ccleaner/p/a/c$1;->e:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 38
    .line 1041
    iget-object v0, p0, Lcom/piriform/ccleaner/p/a/c$1;->a:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/piriform/ccleaner/p/a/c$1;->b:Landroid/net/Uri;

    iget-object v2, p0, Lcom/piriform/ccleaner/p/a/c$1;->c:[Ljava/lang/String;

    iget-object v3, p0, Lcom/piriform/ccleaner/p/a/c$1;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/piriform/ccleaner/p/a/c$1;->e:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 38
    return-object v0
.end method
