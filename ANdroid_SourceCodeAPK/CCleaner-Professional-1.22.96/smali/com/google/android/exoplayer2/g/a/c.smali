.class public final Lcom/google/android/exoplayer2/g/a/c;
.super Lcom/google/android/exoplayer2/g/j;
.source "SourceFile"


# instance fields
.field private final d:Lcom/google/android/exoplayer2/g/a/b;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/g/a/b;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/android/exoplayer2/g/j;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/google/android/exoplayer2/g/a/c;->d:Lcom/google/android/exoplayer2/g/a/b;

    .line 33
    return-void
.end method


# virtual methods
.method public final d()V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/exoplayer2/g/a/c;->d:Lcom/google/android/exoplayer2/g/a/b;

    .line 1130
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/g/j;->a()V

    .line 1131
    iget-object v0, v0, Lcom/google/android/exoplayer2/g/a/b;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 38
    return-void
.end method
