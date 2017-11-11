.class public final Lcom/google/android/gms/internal/ni$d;
.super Lcom/google/android/gms/internal/pw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ni;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/pw",
        "<",
        "Lcom/google/android/gms/internal/ni$d;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile c:[Lcom/google/android/gms/internal/ni$d;


# instance fields
.field public a:Ljava/lang/String;

.field public b:[Lcom/google/android/gms/internal/ni$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 0
    invoke-direct {p0}, Lcom/google/android/gms/internal/pw;-><init>()V

    .line 1000
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ni$d;->a:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/ni$b;->b()[Lcom/google/android/gms/internal/ni$b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ni$d;->b:[Lcom/google/android/gms/internal/ni$b;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ni$d;->ag:Lcom/google/android/gms/internal/py;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ni$d;->ah:I

    .line 0
    return-void
.end method

.method public static b()[Lcom/google/android/gms/internal/ni$d;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/ni$d;->c:[Lcom/google/android/gms/internal/ni$d;

    if-nez v0, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/qa;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ni$d;->c:[Lcom/google/android/gms/internal/ni$d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/internal/ni$d;

    sput-object v0, Lcom/google/android/gms/internal/ni$d;->c:[Lcom/google/android/gms/internal/ni$d;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ni$d;->c:[Lcom/google/android/gms/internal/ni$d;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method protected final a()I
    .locals 5

    invoke-super {p0}, Lcom/google/android/gms/internal/pw;->a()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ni$d;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ni$d;->a:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/ni$d;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/pv;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ni$d;->b:[Lcom/google/android/gms/internal/ni$b;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/ni$d;->b:[Lcom/google/android/gms/internal/ni$b;

    array-length v1, v1

    if-lez v1, :cond_3

    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ni$d;->b:[Lcom/google/android/gms/internal/ni$b;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ni$d;->b:[Lcom/google/android/gms/internal/ni$b;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    const/4 v3, 0x2

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/pv;->b(ILcom/google/android/gms/internal/qc;)I

    move-result v2

    add-int/2addr v1, v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    :cond_3
    return v0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/pu;)Lcom/google/android/gms/internal/qc;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 0
    .line 2000
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pu;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/pw;->a(Lcom/google/android/gms/internal/pu;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pu;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ni$d;->a:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x12

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/qf;->a(Lcom/google/android/gms/internal/pu;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ni$d;->b:[Lcom/google/android/gms/internal/ni$b;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/ni$b;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/ni$d;->b:[Lcom/google/android/gms/internal/ni$b;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    new-instance v3, Lcom/google/android/gms/internal/ni$b;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ni$b;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/pu;->a(Lcom/google/android/gms/internal/qc;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/pu;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ni$d;->b:[Lcom/google/android/gms/internal/ni$b;

    array-length v0, v0

    goto :goto_1

    :cond_3
    new-instance v3, Lcom/google/android/gms/internal/ni$b;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ni$b;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/pu;->a(Lcom/google/android/gms/internal/qc;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/ni$d;->b:[Lcom/google/android/gms/internal/ni$b;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public final a(Lcom/google/android/gms/internal/pv;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ni$d;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ni$d;->a:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/ni$d;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/pv;->a(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ni$d;->b:[Lcom/google/android/gms/internal/ni$b;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ni$d;->b:[Lcom/google/android/gms/internal/ni$b;

    array-length v0, v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ni$d;->b:[Lcom/google/android/gms/internal/ni$b;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ni$d;->b:[Lcom/google/android/gms/internal/ni$b;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/pv;->a(ILcom/google/android/gms/internal/qc;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/pw;->a(Lcom/google/android/gms/internal/pv;)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/internal/ni$d;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/ni$d;

    iget-object v2, p0, Lcom/google/android/gms/internal/ni$d;->a:Ljava/lang/String;

    if-nez v2, :cond_3

    iget-object v2, p1, Lcom/google/android/gms/internal/ni$d;->a:Ljava/lang/String;

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/ni$d;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/ni$d;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/internal/ni$d;->b:[Lcom/google/android/gms/internal/ni$b;

    iget-object v3, p1, Lcom/google/android/gms/internal/ni$d;->b:[Lcom/google/android/gms/internal/ni$b;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/qa;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/internal/ni$d;->ag:Lcom/google/android/gms/internal/py;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/google/android/gms/internal/ni$d;->ag:Lcom/google/android/gms/internal/py;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/py;->a()Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    iget-object v2, p1, Lcom/google/android/gms/internal/ni$d;->ag:Lcom/google/android/gms/internal/py;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/google/android/gms/internal/ni$d;->ag:Lcom/google/android/gms/internal/py;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/py;->a()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ni$d;->ag:Lcom/google/android/gms/internal/py;

    iget-object v1, p1, Lcom/google/android/gms/internal/ni$d;->ag:Lcom/google/android/gms/internal/py;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/py;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/ni$d;->a:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/ni$d;->b:[Lcom/google/android/gms/internal/ni$b;

    invoke-static {v2}, Lcom/google/android/gms/internal/qa;->a([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/ni$d;->ag:Lcom/google/android/gms/internal/py;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ni$d;->ag:Lcom/google/android/gms/internal/py;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/py;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    :goto_1
    add-int/2addr v0, v1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ni$d;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ni$d;->ag:Lcom/google/android/gms/internal/py;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/py;->hashCode()I

    move-result v1

    goto :goto_1
.end method
