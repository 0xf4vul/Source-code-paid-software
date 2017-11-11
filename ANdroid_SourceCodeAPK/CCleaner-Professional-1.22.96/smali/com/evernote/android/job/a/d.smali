.class public final Lcom/evernote/android/job/a/d;
.super Ld/a/a/a/a/a;
.source "SourceFile"


# static fields
.field private static volatile a:[Ld/a/a/a/b/b;

.field private static volatile b:Z


# instance fields
.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    new-array v0, v0, [Ld/a/a/a/b/b;

    sput-object v0, Lcom/evernote/android/job/a/d;->a:[Ld/a/a/a/b/b;

    .line 44
    const/4 v0, 0x1

    sput-boolean v0, Lcom/evernote/android/job/a/d;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/evernote/android/job/a/d;-><init>(Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0}, Ld/a/a/a/a/a;-><init>()V

    .line 115
    iput-object p1, p0, Lcom/evernote/android/job/a/d;->c:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public static a(Z)V
    .locals 0

    .prologue
    .line 94
    sput-boolean p0, Lcom/evernote/android/job/a/d;->b:Z

    .line 95
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/evernote/android/job/a/d;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-super {p0}, Ld/a/a/a/a/a;->a()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/evernote/android/job/a/d;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method protected final a(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 5

    .prologue
    .line 125
    sget-boolean v0, Lcom/evernote/android/job/a/d;->b:Z

    if-eqz v0, :cond_0

    .line 126
    invoke-super {p0, p1, p2, p3}, Ld/a/a/a/a/a;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 129
    :cond_0
    sget-object v1, Lcom/evernote/android/job/a/d;->a:[Ld/a/a/a/b/b;

    .line 130
    array-length v0, v1

    if-lez v0, :cond_2

    .line 131
    invoke-virtual {p0}, Lcom/evernote/android/job/a/d;->a()Ljava/lang/String;

    move-result-object v2

    .line 133
    array-length v3, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    aget-object v4, v1, v0

    .line 134
    if-eqz v4, :cond_1

    .line 135
    invoke-interface {v4, p1, v2, p2, p3}, Ld/a/a/a/b/b;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 133
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 139
    :cond_2
    return-void
.end method
