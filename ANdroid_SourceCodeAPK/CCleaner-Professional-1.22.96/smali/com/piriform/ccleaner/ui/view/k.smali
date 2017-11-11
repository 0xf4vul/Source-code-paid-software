.class public final Lcom/piriform/ccleaner/ui/view/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Landroid/content/ContentResolver;

.field final b:Lf/g;

.field final c:Lf/g;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Lf/g;Lf/g;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/view/k;->a:Landroid/content/ContentResolver;

    .line 30
    iput-object p2, p0, Lcom/piriform/ccleaner/ui/view/k;->b:Lf/g;

    .line 31
    iput-object p3, p0, Lcom/piriform/ccleaner/ui/view/k;->c:Lf/g;

    .line 32
    return-void
.end method


# virtual methods
.method final a(Landroid/net/Uri;Lcom/piriform/ccleaner/g/d;)Landroid/database/Cursor;
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 96
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/k;->a:Landroid/content/ContentResolver;

    new-array v2, v4, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v2, v5

    const-string/jumbo v3, "_data=?"

    new-array v4, v4, [Ljava/lang/String;

    .line 100
    invoke-virtual {p2}, Lcom/piriform/ccleaner/g/d;->b()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    const/4 v5, 0x0

    move-object v1, p1

    .line 96
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
